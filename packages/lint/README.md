# @fourtwentyjs/eslint-config-defaults

Common linting configuration for `FourtwentyJS` libraries utilizing:

- [ESLint](https://eslint.org/)
- [TypeScript ESLint](https://github.com/typescript-eslint/typescript-eslint)
- [TypeStrict](https://github.com/krzkaczor/TypeStrict)
- [Prettier](https://prettier.io/docs/en/integrating-with-linters.html)

Exposed CLI commands:

- `fourtwentyjs-config-lint`
- `fourtwentyjs-config-lint-fix`

## Usage

Add `.eslintrc.js`:

```js
module.exports = {
  extends: "@fourtwentyjs/eslint-config-defaults"
}
```

Add `prettier.config.js`:

```js
module.exports = require('@fourtwentyjs/eslint-config-defaults/prettier.config.js')
```

Use CLI commands above in your `package.json`:

```json
  "scripts": {
    "lint": "fourtwentyjs-config-lint",
    "lint:fix": "fourtwentyjs-config-lint-fix",
  }
```

## Getting the most out of linting

This lint package is used as git pre-push hook on [FourtwentyJS VM repo](https://github.com/420integrated/fourtwentyjs-vm/blob/567bd82e0f42d93f1a43d551da6067e305d8f3cd/package.json#L8-L12), with the help of [Husky](https://www.npmjs.com/package/husky).


_Note: The name of this package deviates from the standard @fourtwentyjs/config-xxx, due to an ESLint hard rule on package naming. [Reference](https://eslint.org/docs/developer-guide/shareable-configs#npm-scoped-modules)._
