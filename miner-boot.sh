#!/bin/sh

# Runs cgminer on boot with the correct config.json file 
# miner-boot.sh
# DavidMaitland.me & Josh.Farrant.me 2014

sudo -u pi screen -dmS piMiner INSTALLDIR/cgminer-gc3355/cgminer -c INSTALLDIR/config.json