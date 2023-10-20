class IllegalArgumentException implements Exception {
  final String message;

  final Exception? cause;

  final StackTrace? stackTrace;

  IllegalArgumentException(
    this.message, {
    this.cause,
    this.stackTrace,
  });

  @override
  String toString() =>
      'IllegalArgumentException(message: $message, cause: $cause)';
}
