#!/bin/bash
apt-get update
sudo apt-get install libgmp3-dev
git clone https://github.com/nccgroup/featherduster.git
cd featherduster
python setup.py install
