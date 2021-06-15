import 'sanitizer.dart';

typedef SanitizerBuilder<DATA extends Object> = Sanitizer<DATA> Function(
    DATA data);
