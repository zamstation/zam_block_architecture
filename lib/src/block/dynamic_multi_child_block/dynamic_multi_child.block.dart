import '../block.dart';
import '../block.builder.dart';

abstract class DynamicMultiChildBlock<OUTPUT extends Object>
    extends Block<OUTPUT> {
  const DynamicMultiChildBlock();

  Iterable<BlockBuilder<OUTPUT>> get childBuilders;
}
