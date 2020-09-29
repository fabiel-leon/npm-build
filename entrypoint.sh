#!/bin/sh -l
ls -la

npm config ls
npm config ls -l

echo "******************"
echo "*** BUILDING"
echo "******************"
npm run build