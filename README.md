# illusory0x0/native

## Description

A native FFI utility library.

Provides functions for interoperability with C, such as pointer arithmetic, CString, C arrays, Moonbit RC management, and memory allocation functions.

The publicly available interfaces can be viewed in the [native.mbti](https://github.com/moonbit-community/native/blob/master/src/native.mbti) interface file

## Installation

### Install from mooncake

```bash
moon add illusory0x0/native
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
