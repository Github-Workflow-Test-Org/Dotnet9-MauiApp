#!/bin/bash
name=$(basename ${PWD})
dotnet build -c Debug
./binaries-ios.sh
./binaries-android.sh
./binaries-macosx.sh
