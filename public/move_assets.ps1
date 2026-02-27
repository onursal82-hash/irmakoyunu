New-Item -ItemType Directory -Force -Path public
Get-ChildItem -Path . -Filter *.png | Move-Item -Destination public -Force
Get-ChildItem -Path . -Filter *.mp3 | Move-Item -Destination public -Force
if (Test-Path index.html) { Move-Item index.html public -Force }
if (Test-Path sw.js) { Move-Item sw.js public -Force }
if (Test-Path manifest.json) { Move-Item manifest.json public -Force }