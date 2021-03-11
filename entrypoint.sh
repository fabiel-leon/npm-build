#!/bin/sh -l

# ls -la
# npm config ls
# npm config ls -l

# fix error "No user exists for uid 1001" from git and ssh
# ARG 
# USER_ID=1001
# # ARG 
# GROUP_ID=1001
# groupadd -g $GROUP_ID user && \
#     useradd -u $USER_ID -s /bin/sh -g user user

git config --global --replace-all url.https://github.com/.insteadOf ssh://git@github.com/
git config --global --add url.https://github.com/.insteadOf 'git@github.com:'

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