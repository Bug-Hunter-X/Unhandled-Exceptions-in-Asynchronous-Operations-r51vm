```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access data from the JSON response, e.g. 
      final data = jsonResponse['data']; 
    } else {
      // Handle errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Optionally, rethrow the exception for higher-level handling
    rethrow; 
  }
}
```