#!/bin/bash

# Define the list of titles
titles=(
    "SQL_injection"
    "Cross-site_scripting"
    "Cross-site_request_forgery_(CSRF)"
    "Clickjacking"
    "DOM-based_vulnerabilities"
    "Cross-origin_resource_sharing_(CORS)"
    "XML_external_entity_(XXE)_injection"
    "Server-side_request_forgery(SSRF)"
    "HTTP_request_smuggling"
    "OS_command_injection"
    "Server-side_template_injection"
    "Path_traversal"
    "Access_control_vulnerabilities"
    "Authentication"
    "WebSockets"
    "Web_cache_poisoning"
    "Insecure_deserialization"
    "Information_disclosure"
    "Bussiness_logic_vulnarabilities"
    "HTTP_host_heder_attacks"
    "OAuth_authentication"
    "File_upload_vulnerabilities"
    "JWT"
    "Essential_skills"
    "Prototype_pollution"
    "GraphQL_API_vulnerabilites"
    "Race_conditions"
    "NoSQL_injection"
    "API_testing"
    "Web_LLM_attacks"
)

# Loop through each title and create a folder with README
for title in "${titles[@]}"; do
    # Create the folder
    mkdir -p "$title"
    
    # Create README file
    touch "$title/README.md"
    echo "# $title" >> "$title/README.md"
    echo "This folder contains resources related to $title." >> "$title/README.md"
done
