```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData['key']);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format - $e');
  } on SocketException catch (e) {
    print('Error: Network error - $e');
  } on TimeoutException catch (e) {
    print('Error: Request timed out - $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```