#/bin/bash

DIRINSTALL=~/.ywr
while true; do
    read -p "You are about to uninstall ywr. Continue? Y/n " yn
    case $yn in
        [Yy]* )
        rm -rf $DIRINSTALL
        echo "All done. Bye!"
        break;;
        * ) echo "Uninstallation aborted!"
        break;;
    esac
done
