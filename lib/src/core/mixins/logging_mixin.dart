import 'package:logger/logger.dart';

mixin LoggingMixin {
  Logger get log {
    return Logger(printer: PrettyPrinter(methodCount: 0));
  }
}
