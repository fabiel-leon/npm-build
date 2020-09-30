#!/bin/sh -l

# ls -la
# npm config ls
# npm config ls -l

echo "NPM  version: $(npm -v)"
echo "NODE version: $(node -v)"

echo "******************"
echo "*** BUILDING"
echo "******************"
npm install
npm run build
ls -la