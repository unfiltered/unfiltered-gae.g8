#!/bin/bash

set -eu

SDK=appengine-java-sdk-1.9.63
SDK_ZIP=${SDK}.zip
wget https://storage.googleapis.com/appengine-sdks/featured/${SDK_ZIP}
unzip ${SDK_ZIP}
unset APPENGINE_SDK_HOME
export APPENGINE_SDK_HOME=$(pwd)/$SDK

sbt -v "set g8Properties in g8 in Test ~= { _ ++ Map((\"scala_version\" -> \"$SCALA_VERSION\")) }; g8Test"
