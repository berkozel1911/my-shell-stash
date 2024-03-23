#!/usr/bin/env bash

cd ./src

INSTALL_DEST="/opt/bin/swiss-knife-scripts/"

echo "Creating installation directory..."
sudo mkdir -pv $INSTALL_DEST

for i in $(ls); do
   sudo cp -v $i $INSTALL_DEST/;
done


echo "Adding script directory to PATH env. variable of current user."

echo "" >> ~/.profile
echo "#github.com/berkozel1911/swiss-knife-scripts" >> ~/.profile
echo "export PATH=\$PATH:${INSTALL_DEST}" >> ~/.profile

echo "Tip: you can add \"export PATH=\$PATH:${INSTALL_DEST}\" line to root user's ~/.profile file if you want to access them from root shell."
