#!/bin/bash
# Install my weather indicator
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:atareao/atareao
sudo apt-get update
sudo apt-get install -y my-weather-indicator
my-weather-indicator &