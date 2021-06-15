import '../block/block.dart';

abstract class Sanitizer<DATA extends Object> extends Block<DATA> {
  DATA get data;

  const Sanitizer();
}
