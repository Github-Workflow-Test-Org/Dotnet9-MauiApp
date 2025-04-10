#!/bin/bash
name=$(basename ${PWD})
#echo $name 
archive=${name}-macosx-binaries.zip
#echo $archive

#zip output to binaries directory; will probably only work on MacOSX
zip -r ../binaries/${archive} ./bin/Debug/net9.0-maccatalyst/maccatalyst-arm64/*.dll ./bin/Debug/net9.0-maccatalyst/maccatalyst-arm64/*.pdb
#cp -R ./bin/Debug/net6.0-android/*.apk ../binaries-package
