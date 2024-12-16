```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // Access jsonData['key'] here, but jsonData might be null
      print(jsonData['key']); 
    } else {
      // Handle error response
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
  }
}
```