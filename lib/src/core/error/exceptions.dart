sealed class APIException implements Exception {
  dynamic get messages;
  String get displayMessage;
  bool get canRetry;
}

class HttpException extends APIException {
  HttpException({this.statusCode, required this.messages});
  final int? statusCode;
  @override
  final dynamic messages;

  @override
  String get displayMessage => 'Loading failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'HttpException($statusCode, $messages)';
}

class LoginFailedException extends APIException {
  LoginFailedException({required this.messages, this.statusCode, this.data});
  final int? statusCode;

  @override
  final dynamic messages;
  final dynamic data;

  @override
  String get displayMessage => 'Login failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'LoginFailedException($statusCode, $messages, $data)';
}

class SignupFailedException extends APIException {
  SignupFailedException({required this.messages, this.statusCode, this.data});
  final int? statusCode;

  @override
  final dynamic messages;
  final dynamic data;

  @override
  String get displayMessage => 'Signup failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'SignupFailedException($statusCode, $messages, $data)';
}
