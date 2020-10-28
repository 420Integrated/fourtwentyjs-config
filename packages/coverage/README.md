# @fourtwentyjs/config-coverage

Common test coverage configuration for `FourtwentyJS` libraries.

Tool: [nyc](https://istanbul.js.org/)

Exposed CLI command:

- `fourtwentyjs-config-coverage`

## Usage

Add `.nycrc`:

```json
{
  "extends": "@fourtwentyjs/config-coverage"
}
```

Use scipt above in `package.json`:

```json
  "scripts": {
    "coverage": "fourtwentyjs-config-coverage"
  }
```
