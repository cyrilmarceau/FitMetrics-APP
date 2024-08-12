import 'package:fitmetrics/src/features/authentication/data/models/login_response_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/models/exercise_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/models/muscle_group_response_model.dart';
import 'package:fitmetrics/src/features/user/data/models/user_response_model.dart';

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
  final LoginError messages;
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
  final SignupFieldsError messages;
  final dynamic data;

  @override
  String get displayMessage => 'Signup failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'SignupFailedException($statusCode, $messages, $data)';
}

class UserProfileException extends APIException {
  UserProfileException({required this.messages, this.statusCode, this.data});
  final int? statusCode;

  @override
  final UserProfileError messages;
  final dynamic data;

  @override
  String get displayMessage => 'User fetch failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'UserProfileException($statusCode, $messages, $data)';
}

class ExerciseException extends APIException {
  ExerciseException({required this.messages, this.statusCode, this.data});
  final int? statusCode;

  @override
  final ExerciseError messages;
  final dynamic data;

  @override
  String get displayMessage => 'Exercise fetch failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'ExerciseException($statusCode, $messages, $data)';
}

class MuscleGroupException extends APIException {
  MuscleGroupException({required this.messages, this.statusCode, this.data});
  final int? statusCode;

  @override
  final MuscleGroupError messages;
  final dynamic data;

  @override
  String get displayMessage => 'Muscle group fetch failed.\n${toString()}';

  @override
  bool get canRetry => true;

  @override
  String toString() => 'MuscleGroupException($statusCode, $messages, $data)';
}
