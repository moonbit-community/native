///|
test {
  // When running `moon test`, the test runner will automatically close the
  // stdin stream, therefore we shall read an EOF character immediately.
  assert_true!(@native.getchar() < 0)
}
