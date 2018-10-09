#! /bin/bash

# for build use

# AGORA App Id
appId="your app id"

echo -e "build start...\n"
cordova platform rm ios
cordova plugin add cordova-plugin-agora --variable APP_ID="${appId}"
cordova platform add ios
cordova build ios
echo -e "task end\n"
