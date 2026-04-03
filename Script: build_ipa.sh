#!/bin/bash

APP_NAME="IOSWebApp"
SCHEME="IOSWebApp"
WORKSPACE="IOSWebApp.xcodeproj"

xcodebuild clean

xcodebuild archive \
-scheme $SCHEME \
-project $WORKSPACE \
-archivePath build/$APP_NAME.xcarchive

xcodebuild -exportArchive \
-archivePath build/$APP_NAME.xcarchive \
-exportPath build \
-exportOptionsPlist exportOptions.plist

 echo "IPA created in build/ folder"
