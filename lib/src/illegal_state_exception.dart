class IllegalStateException implements Exception {
  final String message;

  final Exception? cause;

  final StackTrace? stackTrace;

  IllegalStateException(
    this.message, {
    this.cause,
    this.stackTrace,
  });

  @override
  String toString() =>
      'IllegalStateException(message: $message, cause: $cause)';
}
