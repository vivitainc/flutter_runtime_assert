class IllegalStateException implements Exception {
  final String message;
  IllegalStateException(this.message);

  @override
  String toString() => 'IllegalStateException(message: $message)';
}
