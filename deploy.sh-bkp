#!/bin/bash

# Variables
app_name="YourAppName"
app_publish_dir="publish"
app_dll="${app_name}.dll"

# Function to display error messages
display_error() {
  echo "Error: $1"
  exit 1
}

# Function to check if .NET Core SDK is installed
check_dotnet_sdk() {
  if ! command -v dotnet &> /dev/null; then
    display_error ".NET Core SDK is not installed. Please install it before running this script."
  fi
}

# Function to publish the application
publish_application() {
  dotnet publish --configuration Release --output "$app_publish_dir"
}

# Function to run the application
run_application() {
  cd "$app_publish_dir"
  dotnet "$app_dll"
}

# Main script execution
check_dotnet_sdk

echo "Publishing $app_name..."
publish_application

echo "Running $app_name..."
run_application
## Lalatendu
## https://github.com/Lalatenduswain/dotnet-deploy.sh
