#! /usr/bin/env bash
if ! which -s npm; then
    echo "Please install Node.js, node version specified here https://docusaurus.io/docs/installation (at least 18.0)"
else
    echo "Current node version is [$(node --version)]"
fi

set -e

echo "Sourcing .env.sample"
# Variables in .env.sample file could be customised
# but this is not necessary for local-only testing
# Note that the `build` step below will fail if the relevant
# environment variables are not set
source .env.sample

set -x

# This only really required at the very first run and each time there is
# a modification of either `package.json` or `package-lock.json`
# However running it systematically does not take much time and does no harm
npm install

npm run build && npm run start