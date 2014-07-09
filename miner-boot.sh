#!/bin/sh

# Runs cgminer on boot with the correct config.json file 
# miner-boot.sh
# DavidMaitland.me & Josh.Farrant.me 2014

screen -dmS piMiner cgminer -c ~/config.json