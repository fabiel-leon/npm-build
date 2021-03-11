#!/bin/sh -l

# ls -la
# npm config ls
# npm config ls -l

echo "NPM  version: $(npm -v)"
echo "NODE version: $(node -v)"

echo "::group:: Installing"
npm ci
if [ $? -eq 0 ]
then
  echo "The script ran ok"
else
  echo "The installation has failed" >&2
  exit 1
fi
echo "::endgroup::"

echo "::group:: Building"
npm run build
if [ $? -eq 0 ]
then
  echo "The script ran ok"
else
  echo "The build has failed" >&2
  exit 1
fi
echo "::endgroup::"

echo "::group:: Installing Production"
npm ci --production
if [ $? -eq 0 ]
then
  echo "The script ran ok"
else
  echo "The installation has failed" >&2
  exit 1
fi
echo "::endgroup::"