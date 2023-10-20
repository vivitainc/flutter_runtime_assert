/// 実行中のPlatformで非対応な処理が実行された.
class UnsupportedPlatformException implements Exception {
  final String message;

  final Exception? cause;

  final StackTrace? stackTrace;

  UnsupportedPlatformException(
    this.message, {
    this.cause,
    this.stackTrace,
  });

  @override
  String toString() =>
      'UnsupportedPlatformException(message: $message, cause: $cause)';
}
