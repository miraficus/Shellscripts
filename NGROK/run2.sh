#!/bin/bash
./ngrok authtoken thisismyngroktoken
./ngrok start -all -region eu -config /home/pi/Ngrok/ngrok.yml
