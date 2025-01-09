```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (/* some condition */ true) {
      throw Exception('Simulated error');
    }
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('TimeoutException caught: $e');
    // Handle TimeoutException specifically
  } on Exception catch (e) {
    print('Exception caught: $e');
    // Handle other exceptions
  } catch (e, stacktrace) {
    print('Unknown error caught: $e, stacktrace: $stacktrace');
    // Handle unknown errors
  }
}

void main() async {
  await fetchData();
}
```