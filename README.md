# Unhandled Exceptions in Asynchronous Dart Operations

This example demonstrates a common issue in Dart applications: insufficient exception handling in asynchronous operations.  The `fetchData` function uses `http.get` to fetch data from a remote API.  While it includes a `try-catch` block, the catch statement is too generic. This can mask underlying issues, making debugging harder.

The solution demonstrates improved exception handling.  It explicitly handles different types of exceptions (e.g., `FormatException`, `SocketException`) providing more informative error messages and improving application resilience.