import 'dart:io' as io;

import 'package:flutter/foundation.dart';

import 'illegal_argument_exception.dart';
import 'illegal_state_exception.dart';
import 'unsupported_platform_exception.dart';

/// FlutterのUnitTest($ flutter test)として実行中であればtrueを返却する.
bool get _isFlutterTesting =>
    !kIsWeb && io.Platform.environment.containsKey('FLUTTER_TEST');

/// UnitTestであることを保証する.
/// 間違って呼び出さないようにするための保険.
void assertTesting() {
  assert(
    _isFlutterTesting,
    'Invalid runtime',
  ); // Build phase check.
  check(
    _isFlutterTesting,
    () => 'Invalid runtime',
  ); // Runtime phase check.
}

/// Kotlin.check()の代替関数.
/// test != trueの場合、message()を評価して例外を投げる.
/// この関数はRelease Runtimeにも残される点がassertと異なる.
// ignore: avoid_positional_boolean_parameters
void check(bool test, dynamic message) {
  if (!test) {
    if (message is GetAssertionMessage) {
      throw IllegalStateException(message());
    } else {
      throw IllegalStateException(message.toString());
    }
  }
}

/// Kotlin.check()の代替関数.
/// test != trueの場合、message()を評価して例外を投げる.
/// この関数はRelease Runtimeにも残される点がassertと異なる.
// ignore: avoid_positional_boolean_parameters
void checkArgument(bool test, dynamic message) {
  if (!test) {
    if (message is GetAssertionMessage) {
      throw IllegalArgumentException(message());
    } else {
      throw IllegalArgumentException(message.toString());
    }
  }
}

/// Kotlin.check()の代替関数.
/// test != trueの場合、message()を評価して例外を投げる.
/// この関数はRelease Runtimeにも残される点がassertと異なる.
// ignore: avoid_positional_boolean_parameters
void checkFormat(bool test, dynamic message) {
  if (!test) {
    if (message is GetAssertionMessage) {
      throw FormatException(message());
    } else {
      throw FormatException(message.toString());
    }
  }
}

/// Kotlin.check()の代替関数.
/// test != trueの場合、message()を評価して例外を投げる.
/// この関数はRelease Runtimeにも残される点がassertと異なる.
// ignore: avoid_positional_boolean_parameters
void checkPlatform(bool test, dynamic message) {
  if (!test) {
    if (message is GetAssertionMessage) {
      throw UnsupportedPlatformException(message());
    } else {
      throw UnsupportedPlatformException(message.toString());
    }
  }
}

/// NonNullであることを保証する.
/// nullである場合、messageを例外として投げる.
T requireNotNull<T>(final T? value, dynamic message) {
  if (value == null) {
    if (message is GetAssertionMessage) {
      throw IllegalStateException(message());
    } else {
      throw IllegalStateException(message.toString());
    }
  }
  return value;
}

typedef GetAssertionMessage = String Function();
