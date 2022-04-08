#!/bin/bash

echo "Installing bshelper..."

cp bshelper /usr/bin/bshelper
chmod +x /usr/bin/bshelper

mkdir /etc/bshelper
cp -r sheets /etc/bshelper/
cp -r figlets /etc/bshelper/

echo "Installed."
