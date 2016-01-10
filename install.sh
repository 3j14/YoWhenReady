#/bin/bash

DIRINSTALL=/usr/share/yo/
DIR="${BASH_SOURCE%/*}"

if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

sudo mkdir $DIRINSTALL

sudo cp $DIR/yo.py $DIRINSTALL
sudo cp $DIR/yo.conf $DIRINSTALL
sudo cp $DIR/yoconf.sh $DIRINSTALL
sudo cp -r $DIR/requests $DIRINSTALL
sudo cp $DIR/yo /usr/bin/

sudo chmod +x /usr/bin/yo

export PATH="$PATH:/usr/bin/yo"

echo "Type 'yo -c' to configure yo."

