runtime_assert

[![Github Actions](https://github.com/vivitainc/flutter_runtime_assert/actions/workflows/flutter-package-test.yaml/badge.svg)](https://github.com/vivitainc/flutter_runtime_assert/actions/workflows/flutter-package-test.yaml)

## Features

Kotlinと同様の実行時Assertを提供する.

## Usage

```dart
check(value == 1, 'Invalid value: $value'); // throws IllegalStateException
checkArgument(value == 1, 'Invalid argument: $value'); // throws IllegalArgumentException
checkFormat(value == 1, 'Invalid format: $value');  // throws FormatException
checkPlatform(value ==1, 'Invalid platform: $value'); // throws UnsupportedPlatformException
requireNotNul(value, 'value is null'); // throws IllegalStateException
```
