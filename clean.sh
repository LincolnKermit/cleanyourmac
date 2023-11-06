#!/bin/bash
user=$SUDO_USER
clear
echo "[]"
sleep 0.5
clear
script_name="clean.sh"
if [ -f "$script_name" ]; then
    sudo cp clean.sh /usr/local/bin/
    sudo chmod +x /usr/local/bin/clean.sh
    echo 'alias clean="/usr/local/bin/clean.sh"' >> ~/.zshrc
    source ~/.zshrc

    echo "Le script $script_name a été copié dans /usr/local/bin et un alias permanent a été créé."
else
    echo "Le script $script_name n'a pas été trouvé dans le répertoire actuel."
fi
sleep 0.5
clear
echo "[*]"
sleep 0.5
clear
echo "[]"
sleep 0.5
rm -rf "/Users/$user/Library/Caches"/*
rm -rf "/Users/$user/Library/Containers/com.apple.Safari/Data/Library/Caches/"*
rm -rf "/tmp/"*
echo "Erased most temps files at : "
echo "/Users/$user/Library/Caches/*"
echo "/Users/$user/Library/Containers/com.apple.Safari/Data/Library/Caches/*"
echo "/tmp/*"
sleep 0.5
clear
echo "[*]"
