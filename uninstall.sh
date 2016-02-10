#/bin/bash

DIRINSTALL=~/.yo
while true; do
    read -p "You are about to uninstall yo. Continue? Y/n " yn
    case $yn in
        [Yy]* )
        rm -r $DIRINSTALL
        echo "All done. Bye!"
        break;;
        * ) echo "Uninstallation aborted!"
        break;;
    esac
done
