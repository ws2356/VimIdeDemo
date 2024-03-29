#!/bin/bash
set -e

pod install
xcodebuild -workspace VimIdeDemo.xcworkspace/ -list -json | jq -r  '.workspace.schemes | .[]' | \
  while read scheme ; \
    do xcodebuild clean -workspace VimIdeDemo.xcworkspace/ -scheme $scheme || true ; \
    done ; \
xcodebuild -workspace VimIdeDemo.xcworkspace/ -scheme VimIdeDemo | xcpretty --report json-compilation-database  --output compile_commands.json
