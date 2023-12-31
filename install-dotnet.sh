#!/bin/bash

# Update the system
sudo apt update

# Install dependencies
sudo apt install curl libunwind8 gettext libc6 libgcc1 libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g

# Download the .NET SDK
wget https://download.visualstudio.microsoft.com/download/pr/62181759-93ce-4512-8de1-92de74a6ba3f/f83ea41c3161f301d3584598f9c31801/dotnet-sdk-6.0.412-linux-x64.tar.gz

# Extract and install the .NET SDK
mkdir dotnet
tar -xf dotnet-sdk-6.0.412-linux-x64.tar.gz -C dotnet --strip-components 1
sudo rm -rf /usr/local/dotnet
sudo mv dotnet /usr/local/dotnet

# Set the PATH environment variable for current user
echo 'export PATH="$PATH:/usr/local/dotnet"' >> ~/.bashrc
source ~/.bashrc

# Set the PATH environment variable for root user
sudo bash -c 'echo "export PATH=\"\$PATH:/usr/local/dotnet\"" >> /root/.bashrc'
source /root/.bashrc

# Verify the installation
dotnet --version
