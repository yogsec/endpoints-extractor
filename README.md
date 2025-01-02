# Endpoints Extractor by YogSec

## Overview
The **Endpoints Extractor by YogSec** is a Bash script designed to extract URLs and API endpoints from the HTML, JavaScript, and JSON content of web pages. This tool is useful for security researchers, bug bounty hunters, and developers looking to identify exposed endpoints within their applications.

---

## Features
- Scan a single URL or a list of URLs.
- Extract URLs from HTML, JavaScript, and JSON content.
- Save the results to a file for further analysis.
- Simple and user-friendly interface.

---

## Prerequisites
- **Bash**: Ensure you are running the script in a Bash shell environment.
- **cURL**: The script uses `curl` to fetch web page content.
- **grep**: Used to extract URLs from the content.
- **sort**: Ensures the URLs are unique.

---

## Usage

### Display Help
```bash
./find_urls_endpoints.sh -h
```

### Scan a Single URL
```bash
./find_urls_endpoints.sh -u <URL>
```
Example:
```bash
./find_urls_endpoints.sh -u https://example.com
```

### Scan a List of URLs
```bash
./find_urls_endpoints.sh -l <FILE>
```
Example:
```bash
./find_urls_endpoints.sh -l urls.txt
```

### Save Results to a File
```bash
./find_urls_endpoints.sh -u <URL> -s <OUTPUT_FILE>
```
Example:
```bash
./find_urls_endpoints.sh -u https://example.com -s results.txt
```

### Combined Example
Scan a list of URLs and save results to a file:
```bash
./find_urls_endpoints.sh -l urls.txt -s endpoints.txt
```

---

## Options
- `-u <URL>`: Specify a single URL to scan.
- `-l <FILE>`: Specify a file containing a list of URLs.
- `-s <FILE>`: Save the output to the specified file.
- `-h`: Display the help message.

---

## Example Output
For the URL `https://example.com`, the script may output:
```
https://example.com/api/v1/users
https://example.com/assets/js/script.js
https://cdn.example.com/library.js
```

---

## Troubleshooting
- **Error: Either -u or -l must be specified**: Ensure you provide a URL with `-u` or a file with `-l`.
- **Error: File <file> does not exist**: Verify the file path is correct.
- **Empty Output**: Ensure the target URL or file contains valid HTML, JS, or JSON content with endpoints.

---

## Author
Developed by **YogSec** for extracting and analyzing web endpoints efficiently.

---

## Support & Contact 📬  
- **LinkedIn Profile:** [Bug Bounty Hunter](https://www.linkedin.com/in/bug-bounty-hunter/)  
- **Donations:** If you find this cheat sheet useful, consider supporting my work via [BuyMeACoffee](https://buymeacoffee.com/yogsec).  
- **Email:** For inquiries, you can reach me at [abhinavsingwal@gmail.com](mailto:abhinavsingwal@gmail.com).
