#!/bin/sh

# Convert .iso to .cso then delete .iso
find . -name "*.iso" -exec maxcso {} \; -exec rm {} \;
