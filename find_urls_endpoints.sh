#!/bin/bash

# Banner
echo "========================================"
echo "       Endpoints Extractor by YogSec"
echo "========================================"

# Function to display help
show_help() {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -u URL           Specify a single URL to scan for endpoints."
    echo "  -l FILE          Specify a file containing a list of URLs to scan."
    echo "  -s FILE          Save the output to a specified file."
    echo "  -h               Display this help message."
    exit 0
}

# Function to extract URLs from HTML, JS, and JSON
extract_urls() {
    local content="$1"
    echo "$content" | grep -Eo 'https?://[^"'\''> ]+' | sort -u
}

# Variables
url=""
url_list=""
save_file=""

# Parse options
while getopts "u:l:s:h" opt; do
    case $opt in
        u) url="$OPTARG" ;;
        l) url_list="$OPTARG" ;;
        s) save_file="$OPTARG" ;;
        h) show_help ;;
        *) show_help ;;
    esac
done

# Ensure at least one input is provided
if [[ -z $url && -z $url_list ]]; then
    echo "Error: Either -u or -l must be specified."
    show_help
fi

# Process a single URL
if [[ -n $url ]]; then
    echo "Scanning URL: $url"
    content=$(curl -s "$url") || { echo "Error fetching $url"; exit 1; }
    urls=$(extract_urls "$content") || { echo "Error extracting URLs from $url"; exit 1; }
    echo "$urls"
fi

# Process a list of URLs
if [[ -n $url_list ]]; then
    if [[ ! -f $url_list ]]; then
        echo "Error: File $url_list does not exist."
        exit 1
    fi
    echo "Scanning URL list from file: $url_list"
    while IFS= read -r line; do
        echo "Scanning URL: $line"
        content=$(curl -s "$line") || { echo "Error fetching $line"; continue; }
        urls=$(extract_urls "$content") || { echo "Error extracting URLs from $line"; continue; }
        echo "$urls"
    done < "$url_list"
fi

# Save to a file if -s option is provided
if [[ -n $save_file ]]; then
    {
        if [[ -n $url ]]; then
            echo "$urls"
        fi
        if [[ -n $url_list ]]; then
            while IFS= read -r line; do
                content=$(curl -s "$line")
                extract_urls "$content"
            done < "$url_list"
        fi
    } > "$save_file"
    echo "Results saved to $save_file"
fi
