#! /bin/bash

# ParenthesisApp
pushd ParenthesisApp && 
    scheme='Parenthesis - (App).*.sw[ift](macOS)'
    rm -rf "${scheme}.xcresult"
    xcodebuild \
        test -project ParenthesisApp.xcodeproj \
        -scheme "${scheme}" \
        -resultBundlePath "${scheme}.xcresult" \
        -quiet &&
    popd


# List all generated files
echo Found xcresult files
find . -iname '*.xcresult'