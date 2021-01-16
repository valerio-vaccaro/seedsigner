#!/bin/sh

sudo apt-get -y update
sudo apt-get -y install wiringpi python3-pip python3-numpy python-pil libopenjp2-7 ttf-mscorefonts-installer git python3-opencv libzbar0 python3-picamera

wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz
cd bcm2835-1.60/
sudo ./configure
sudo make && sudo make check && sudo make install
cd ..

virtualenv -p python3 venv3
. venv3/bin/activate
pip install -r requirements.txt
deactivate
