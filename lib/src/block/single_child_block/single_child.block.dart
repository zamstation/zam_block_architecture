import 'package:zam_core/meta.dart';

import '../block.dart';

///
/// A block that can hold a child block.
///
abstract class SingleChildBlock<OUTPUT extends Object> extends Block<OUTPUT> {
  const SingleChildBlock();

  @protected
  Block<OUTPUT> get child;
}
