import '../block.dart';

///
/// A block that can contain a list of children.
///
abstract class MultiChildBlock<OUTPUT extends Object> extends Block<OUTPUT> {
  Iterable<Block<OUTPUT>> get children;

  const MultiChildBlock();
}
