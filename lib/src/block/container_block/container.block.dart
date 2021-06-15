import '../single_child_block/single_child.block.dart';

abstract class ContainerBlock<OUTPUT extends Object>
    extends SingleChildBlock<OUTPUT> {
  const ContainerBlock();

  @override
  OUTPUT execute() => child.execute();
}
