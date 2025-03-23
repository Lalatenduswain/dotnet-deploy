# .NET Core 6.0 Bash Deployment Script

This is a bash script that automates the deployment and execution of a .NET Core 6.0 application on Ubuntu.

## Prerequisites

- Ubuntu machine
- .NET Core 6.0 SDK installed

## Usage

1. Copy the `deploy.sh` script to your project's root directory.

2. Make the script executable:

   ```bash
   chmod +x deploy.sh
   ```

3. Run the script directly from GitHub:

   ```bash
   curl -o deploy.sh https://raw.githubusercontent.com/Lalatenduswain/dotnet-deploy/master/deploy.sh
   chmod +x deploy.sh
   ./deploy.sh
   ```

   This will download the script from GitHub, make it executable, and execute it.

The script will check if the .NET Core SDK is installed, publish the application, and then run it using the `dotnet` command.

## License

This script is licensed under the [MIT License](LICENSE).
