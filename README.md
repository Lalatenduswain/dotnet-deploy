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

3. Customize the script:

   - Update the `app_name` variable with your application's name if necessary.
   - Modify the `app_dll` variable if your application's entry point DLL has a different name.

4. Open the terminal, navigate to the directory containing the script, and execute it:

   ```bash
   ./deploy.sh
   ```

The script will check if the .NET Core SDK is installed, publish the application, and then run it using the `dotnet` command.

## License

This script is licensed under the [MIT License](LICENSE).
```

Feel free to modify the README.md file further according to your project's specific needs.
