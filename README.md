# Endpoints Extractor Tool

The Endpoints Extractor by YogSec is a Bash script designed to extract URLs and API endpoints from the HTML, JavaScript, and JSON content of web pages. This tool is useful for security researchers, bug bounty hunters, and developers looking to identify exposed endpoints within their applications.
<div align="center">

![endpoints](https://github.com/yogsec/endpoints-extractor/blob/main/endpoints-extractor.jpeg)
</div>
<br>
<div align="center" style="margin: 30px 0;">
  <a href="https://www.whatsapp.com/channel/0029Vb68FeRFnSzGNOZC3h3x">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=WhatsApp+Channel&color=25D366&logo=whatsapp&logoColor=FFFFFF&label=" alt="WhatsApp Channel">
  </a>
  <a href="https://t.me/HackerSecure">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=Telegram+Channel&color=24A1DE&logo=telegram&logoColor=FFFFFF&label=" alt="Telegram Channel">
  </a>
  <a href="https://www.linkedin.com/in/cybersecurity-pentester/">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=LinkedIn&color=0A66C2&logo=LinkedIn&logoColor=FFFFFF&label=" alt="LinkedIn">
  </a>
  <a href="https://linktr.ee/yogsec">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=LinkTree&color=25D366&logo=linktree&logoColor=FFFFFF&label=" alt="LinkTree">
  </a>
  <a href="https://x.com/home">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=X&color=000000&logo=x&logoColor=FFFFFF&label=" alt="X">
  </a>
  <a href="mailto:abhinavsingwal@gmail.com?subject=Hi%20YogSec%20,%20nice%20to%20meet%20you!">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=Gmail&color=EA4335&logo=Gmail&logoColor=FFFFFF&label=" alt="Email">
  </a>
  <a href="https://yogsec.github.io/yogsec/">
    <img src="https://img.shields.io/static/v1?style=for-the-badge&message=Website&color=FFFFC5&logo=Firefox&logoColor=000000&label=" alt="Website">
  </a>
</div>
<br>

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

