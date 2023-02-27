# Psexec-RDP

This script enables RDP (Remote Desktop Protocol) on a remote Windows machine using the psexec tool from Sysinternals. RDP allows you to connect to a remote Windows machine and control it as if you were sitting in front of it.

## Prerequisites

Before you can use this script, you will need:

-   A Windows machine that you want to enable RDP on.
-   Administrative access to the remote Windows machine.
-   The psexec tool from Sysinternals. You can download it from the [Microsoft website](https://docs.microsoft.com/en-us/sysinternals/downloads/psexec).

## Usage

To use this script, follow these steps:

1.  Download and install the psexec tool on your local machine.
    
2.  Clone this repository or download the `enable_rdp.sh` script to your local machine.
    
3.  Open a terminal window and navigate to the directory where the script is located.
    
4.  Run the script using the following command:
  
    
    `./enable_rdp.sh <REMOTE_HOST> <USERNAME> <PASSWORD> <PSEXEC_PATH>` 
    
    Replace `<REMOTE_HOST>`, `<USERNAME>`, `<PASSWORD>`, and `<PSEXEC_PATH>` with the appropriate values for your environment.
    
    For example:
 
    
    `./enable_rdp.sh 192.168.1.100 Administrator password123 /path/to/psexec.exe` 
    
    This command will enable RDP on the Windows machine with IP address 192.168.1.100, using the `Administrator` username and `password123` password to authenticate. It will use the `psexec.exe` tool located in the `/path/to/` directory on your local machine to connect to the remote Windows machine.
    
5.  If the script completes successfully, you should see a message indicating that RDP has been enabled on the remote Windows machine.
    

## Troubleshooting

If you encounter any problems while using this script, here are a few things to check:

-   Make sure that you have administrative access to the remote Windows machine.
-   Make sure that the psexec tool is installed on your local machine and that you have specified the correct path to the tool.
-   Make sure that you have specified the correct values for `<REMOTE_HOST>`, `<USERNAME>`, `<PASSWORD>`, and `<PSEXEC_PATH>` when running the script.
