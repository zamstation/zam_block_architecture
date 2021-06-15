import '../sanitizer.dart';

abstract class BasicSanitizer<DATA extends Object> extends Sanitizer<DATA> {
  final DATA data;

  const BasicSanitizer(this.data);
}
