# @fourtwentyjs/config-typescript

Common `TypeScript` configuration for `FourtwentyJS` libraries.

Tool: [TypeScript](https://www.typescriptlang.org/)

Exposed CLI commands:

- `fourtwentyjs-config-ts-compile`
- `fourtwentyjs-config-ts-build`

## Usage

The three files below compose the functionality built into `./cli/ts-build.sh` and `./cli/ts-compile.sh`. Note that the browser build is optional, and in the case it's not present in your project, browser builds will be ignored.

Add `tsconfig.json`:

```json
{
  "extends": "@fourtwentyjs/config-typescript/tsconfig.json",
  "include": ["src/**/*.ts", "test/**/*.ts"]
}
```

Add `tsconfig.prod.json`:

```json
{
  "extends": "@fourtwentyjs/config-typescript/tsconfig.prod.json",
  "include": ["src/**/*.ts"],
  "compilerOptions": {
    "outDir": "./dist"
  }
}
```

Add `tsconfig.browser.json`:

```json
{
  "extends": "@fourtwentyjs/config-typescript/tsconfig.browser.json",
  "include": ["src/**/*.ts"],
  "compilerOptions": {
    "outDir": "./dist.browser"
  }
}
```

Note: the `outDir` property is mandatory to generate assets to a directory.

Use CLI commands above in your `package.json`:

```json
  "scripts": {
    "tsc":   "fourtwentyjs-config-ts-compile",
    "build": "fourtwentyjs-config-ts-build"
  }
```

The default production target is ES2017. To support shipping the ES5 target for browsers, add to your `package.json`:

```json
  "main": "dist/index.js",
  "types": "dist/index.d.ts",
  "browser": "dist.browser/index.js",
  "files": [
    "dist",
    "dist.browser"
  ]
```
