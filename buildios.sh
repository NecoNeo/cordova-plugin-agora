#! /bin/bash

# for build use

# AGORA App Id
appId="your app id"

echo -e "prepare...\n"
cordova platform rm ios
cordova plugin add cordova-plugin-agora --variable APP_ID="${appId}"
cordova platform add ios
echo -e "BUILD START...\n"
cordova build ios
echo -e "TASK END\n"
