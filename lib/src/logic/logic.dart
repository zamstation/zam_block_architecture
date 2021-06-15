import '../block/block.dart';

///
/// A block that performs some logic and provides output.
///
abstract class Logic<OUTPUT extends Object> extends Block<OUTPUT> {
  const Logic();
}
