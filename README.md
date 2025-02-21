# illusory0x0/native

## Installation


### Install from mooncake

```bash
moon add illusory0x0/native
bash .mooncakes/illusory0x0/native/install.sh
```

### Configure moon.pkg.json

```json 
{
  "is-main": true,
  "import": [
    "illusory0x0/native"
  ],
  "link": {
    "native": {
      "cc-flags": "-fwrapv -fsanitize=address -fsanitize=undefined",
      "cc-link-flags": "-l native.mbt -L ./lib"
    }
  },
}
```

### Test Configuration

run `moon build --target native` in your project root path.

## License

Distributed under the Apache License. See LICENSE.txt for more information.