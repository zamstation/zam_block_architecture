import '../sanitizer.builder.dart';
import '../sanitizer.dart';

class ListSanitizer<DATA extends Object> extends Sanitizer<DATA> {
  @override
  final DATA data;
  final Iterable<SanitizerBuilder<DATA>> childBuilders;

  const ListSanitizer(this.data, this.childBuilders);

  @override
  DATA execute() => childBuilders.fold<DATA>(
      data, (result, builder) => builder(result).execute());
}
