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
    display_error ".NET Core SDK is not installed. Installing it now..."
    install_dotnet_sdk
  fi
}

# Function to install the .NET Core SDK
install_dotnet_sdk() {
  # Add the Microsoft package repository
  wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb

  # Install the .NET SDK
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-6.0
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
