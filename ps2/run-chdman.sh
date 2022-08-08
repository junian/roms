#!/bin/sh

# Convert .iso to .chd then remove .iso
find . -name "*.iso" -exec chdman createcd -i {} -o {}.chd \; -exec rm {} \;

# Rename .iso.chd to .chd
for f in *.iso.chd; do mv -- "$f" "${f%.iso.chd}.chd"; done
