import '../sanitizer.dart';

abstract class BasicSanitizer<DATA extends Object> extends Sanitizer<DATA> {
  @override
  final DATA data;

  const BasicSanitizer(this.data);
}
