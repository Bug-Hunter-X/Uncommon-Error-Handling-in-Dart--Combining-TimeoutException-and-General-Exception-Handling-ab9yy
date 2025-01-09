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
    // Handle TimeoutException specifically.  Perhaps retry the operation
  } on Exception catch (e) {
    print('Exception caught: $e');
    // Handle other exceptions. Maybe log to a service, show user message
  } catch (e, stacktrace) {
    print('Unknown error caught: $e, stacktrace: $stacktrace');
    // Handle unknown errors.  Critical errors should be reported
  } finally {
    // optional finally block
    print('Operation complete');
  }
}

void main() async {
  await fetchData();
}
```