```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check for null before accessing the key
      final keyValue = jsonData['key'];
      if(keyValue != null){
        print(keyValue);
      } else {
        print('Key not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```