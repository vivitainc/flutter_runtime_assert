/// 実行中のPlatformで非対応な処理が実行された.
class UnsupportedPlatformException implements Exception {
  final String message;
  UnsupportedPlatformException(this.message);
}
