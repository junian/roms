#!/bin/sh

# Convert .iso to .chd then remove .iso
find . -name "*.iso" -exec chdman createcd -i {} -o {}.chd \; -exec rm {} \;

# Rename .iso.chd to .chd
for f in *.iso.chd; do mv -- "$f" "${f%.iso.chd}.chd"; done

# Convert .cue to .chd then remove .cue
find . -name "*.cue" -exec chdman createcd -i {} -o {}.chd \; -exec rm {} \;

# Rename .cue.chd to .chd
for f in *.cue.chd; do mv -- "$f" "${f%.cue.chd}.chd"; done

# Remove .bin
find . -name "*.bin" -exec rm {} \;
