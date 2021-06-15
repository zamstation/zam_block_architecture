import '../block.dart';

///
/// Provides a build method to compose blocks.
///
abstract class CompositeBlock<OUTPUT extends Object> extends Block<OUTPUT> {
  const CompositeBlock();

  Block<OUTPUT> build();

  @override
  OUTPUT execute() => build().execute();
}
