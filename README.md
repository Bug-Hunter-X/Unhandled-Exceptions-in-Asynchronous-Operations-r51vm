# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: insufficient error handling within asynchronous functions.  The `fetchData` function makes a network request; however, it only partially handles potential errors.  This can lead to silent failures or application crashes.

The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a more robust solution.

**Key Issues:**

* **Incomplete Exception Handling:** The `try-catch` block only prints an error message.  A more comprehensive solution would involve better error reporting (logging, displaying user-friendly messages, retry mechanisms) and potentially recovering from recoverable errors.
* **Ignoring HTTP Error Codes:** The code only explicitly checks for a 200 status code. Other HTTP error codes (4xx, 5xx) indicating problems with the request or server should be handled appropriately.
* **JSON Decoding Errors:**  There's no error handling for the `jsonDecode` function. If the response isn't valid JSON, this can throw an exception.

**Solution:**

The `bugSolution.dart` file demonstrates a more robust solution, incorporating more complete exception handling, checking for different HTTP status codes, and handling JSON decoding errors.