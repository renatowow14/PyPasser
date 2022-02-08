#!/bin/bash

apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip python3-pocketsphinx swig libpulse-dev gcc libasound2-dev

requirements="
PyPasser
requests<3.0,>=2.25.1
PySocks==1.7.1
SpeechRecognition==3.8.1
pydub==0.25.1
selenium
PocketSphinx
ffmpeg 
wheel
" 
echo "$requirements" > requirements.txt

pip3 install -r requirements.txt
