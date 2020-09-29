#!/bin/sh -l
ls -la

npm config ls
npm config ls -l

echo "NPM  version: $(npm -v)"
echo "NDOE version: $(node -v)"

echo "******************"
echo "*** BUILDING"
echo "******************"
npm run build