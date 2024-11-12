//import 'package:stack_trace/stack_trace.dart';

class ReturnResultError {
  ReturnResultError(this.message, {this.report = true, this.stacktrace});

  String message;
  bool report;
  StackTrace? stacktrace;
}

class ReturnResult<T> {
  ReturnResult({this.handled, this.error, this.data});
  bool? handled;
  ReturnResultError? error;
  T? data;
}


//https://codewithandrea.com/articles/flutter-exception-handling-try-catch-result-type/