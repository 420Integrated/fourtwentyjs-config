#!/bin/sh

# This script helps migrating fourtwentyjs-config from 1.1.1 to 2.0.0

# 1. Some packages had their names changed, so we'll uninstall and install the new ones.

npm remove @fourtwentyjs/config-nyc @fourtwentyjs/config-tsc @fourtwentyjs/config-prettier @fourtwentyjs/config-tslint

npm i --save-dev @fourtwentyjs/config-coverage @fourtwentyjs/config-typescript @fourtwentyjs/eslint-config-defaults

npm i --save-dev @typescript-eslint/eslint-plugin eslint-config-prettier eslint-plugin-implicit-dependencies


# 2. Some scripts had changed name

# fourtwentyjs-config-tsc -> fourtwentyjs-config-ts-compile
sed -E -e 's/fourtwentyjs\-config\-tsc/fourtwentyjs-config-ts-compile/' -ibak package.json

# fourtwentyjs-config-build -> fourtwentyjs-config-ts-build
sed -E -e 's/fourtwentyjs\-config\-build/fourtwentyjs-config-ts-build/' -ibak package.json


npm i --save-dev eslint@6


# 3. Some scripts are just gone

echo "Checking for deprecated scripts. Please remove the pointed scripts below (if any)."

# fourtwentyjs-config-coveralls -> ☠️
grep -EHn "fourtwentyjs-config-coveralls" package.json

# fourtwentyjs-config-lint -> ☠️
# fourtwentyjs-config-lint-fix -> ☠️
grep -EHn "fourtwentyjs-config-tslint(-fix)?" package.json

grep -EHn "tsc" tslint*.json


# 4. Health check
npm run build
npm run lint
npm run lint:fix
npm run coverage
