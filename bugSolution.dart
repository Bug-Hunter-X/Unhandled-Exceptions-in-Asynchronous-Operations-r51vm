```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        return jsonResponse['data'];
      } catch (e) {
        print('Error decoding JSON: $e');
        throw Exception('Invalid JSON response');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //Consider re-throwing or implementing a retry mechanism
    rethrow;
  }
}
```