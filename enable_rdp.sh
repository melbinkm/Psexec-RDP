#!/bin/bash

# Usage: enable_rdp.sh <REMOTE_HOST> <USERNAME> <PASSWORD> <PSEXEC_PATH>

set -e

# Get the command-line arguments
REMOTE_HOST="$1"
USERNAME="$2"
PASSWORD="$3"
PSEXEC_PATH="$4"

# Check if psexec is installed
if [ ! -f "$PSEXEC_PATH" ]; then
    echo "psexec is not installed. Please download and install it from the Sysinternals website." >&2
    exit 1
fi

# Command to enable RDP on the remote Windows machine
COMMAND="reg add \"HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Terminal Server\" /v fDenyTSConnections /t REG_DWORD /d 0 /f"

# Use psexec to execute the command on the remote Windows machine
if ! "$PSEXEC_PATH" "\\$REMOTE_HOST" -u "$USERNAME" -p "$PASSWORD" cmd /c "$COMMAND"; then
    echo "Failed to enable RDP on $REMOTE_HOST." >&2
    exit 1
fi

echo "RDP has been enabled on $REMOTE_HOST."
