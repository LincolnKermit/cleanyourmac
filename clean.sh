#!/bin/bash
user=$SUDO_USER
clear
echo "[*]"
rm -rf "/Users/$user/Library/Caches"/*
rm -rf "/Users/$user/Library/Containers/com.apple.Safari/Data/Library/Caches/"*
alias clean="sudo bash /Users/$user/Documents/Workspace/clean.sh"
clear
echo "[*]"