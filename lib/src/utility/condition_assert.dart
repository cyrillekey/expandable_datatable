void alwaysAssert(bool condition, String message) {
  if (condition) {
    throw AssertionError(message);
  }
}
