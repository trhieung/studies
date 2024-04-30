#!/bin/bash

# Define the list of names
names=(
    "Unprotected admin functionality"
    "Unprotected admin functionality with unpredictable URL"
    "User role controlled by request parameter"
    "User role can be modified in user profile"
    "User ID controlled by request parameter"
    "User ID controlled by request parameter, with unpredictable user IDs"
    "User ID controlled by request parameter with data leakage in redirect"
    "User ID controlled by request parameter with password disclosure"
    "Insecure direct object references"
    "URL-based access control can be circumvented"
    "Method-based access control can be circumvented"
    "Multi-step process with no access control on one step"
    "Referer-based access control"
)

# Loop through each name and create a Python file
for name in "${names[@]}"; do
    # Format the name to use as a filename
    filename=$(echo "$name" | tr ' ' '_' | tr -d ',')".py"
    
    # Create the Python file with a basic content
    echo "# $name" >> "$filename"
    echo "# Write your code here" >> "$filename"
    
    # Set permissions to allow changes for all users
    chmod a+w "$filename"
done
