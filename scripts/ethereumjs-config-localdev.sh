#!/bin/sh

# from 1.1.1 production to 2.0.0 development

npm remove @fourtwentyjs/config-nyc @fourtwentyjs/config-tsc @fourtwentyjs/config-prettier @fourtwentyjs/config-tslint

FOURTWENTYJS_CONFIG_PATH=/Users/420integrated/Projects/go-420coin/fourtwentyjs-config/packages

PROJECT_PWD=`pwd`

cd $FOURTWENTYJS_CONFIG_PATH/coverage && npm link
cd $FOURTWENTYJS_CONFIG_PATH/typescript && npm link
cd $FOURTWENTYJS_CONFIG_PATH/lint && npm link

cd $PROJECT_PWD
npm link @fourtwentyjs/config-coverage
npm link @fourtwentyjs/config-typescript
npm link @fourtwentyjs/eslint-config-defaults

npm i --save-dev \
  @fourtwentyjs/config-coverage@file:$FOURTWENTYJS_CONFIG_PATH/packages/coverage \
  @fourtwentyjs/config-typescript@file:$FOURTWENTYJS_CONFIG_PATH/packages/typescript \
  @fourtwentyjs/eslint-config-helper@file:$FOURTWENTYJS_CONFIG_PATH/packages/lint