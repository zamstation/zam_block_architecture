import '../block/block.dart';

///
/// Takes a data, sanitizes it, returns it back.
///
abstract class Sanitizer<DATA extends Object> extends Block<DATA> {
  DATA get data;

  const Sanitizer();
}
