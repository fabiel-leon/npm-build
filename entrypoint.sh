#!/bin/sh -l

# ls -la
# npm config ls
# npm config ls -l

echo "NPM  version: $(npm -v)"
echo "NODE version: $(node -v)"

echo "::group:: Installing"
npm ci
echo "::endgroup::"

echo "::group:: Building"
npm run build
echo "::endgroup::"

echo "::group:: Installing Production"
npm ci --production
echo "::endgroup::"