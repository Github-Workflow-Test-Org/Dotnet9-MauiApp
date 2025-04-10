#!/bin/bash
name=$(basename ${PWD})
#echo $name 
archive=${name}-android-binaries.zip
#echo $archive

#zip output to binaries directory; will probably only work on MacOSX
zip -r ../binaries/${archive} ./bin/Debug/net9.0-android/*.dll ./bin/Debug/net9.0-android/*.pdb
cp -R ./bin/Debug/net9.0-android/*.apk ../binaries-package
