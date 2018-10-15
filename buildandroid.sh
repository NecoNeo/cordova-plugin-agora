#! /bin/bash

# for build use

# AGORA App Id
appId="Your app id"

echo ${appId}

echo -e "prepare...\n"
cordova platform rm android
cordova plugin add cordova-plugin-agora --variable APP_ID="${appId}"
cordova platform add android
echo -e "BUILD START...\n"
cordova build android

read -p "task end"
