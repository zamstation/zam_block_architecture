import '../block.dart';

abstract class TransformableCompositeBlock<OUTPUT extends Object,
    INTER_OUTPUT extends Object> extends Block<OUTPUT> {
  const TransformableCompositeBlock();

  Block<INTER_OUTPUT> build();

  OUTPUT transform(INTER_OUTPUT value);

  @override
  OUTPUT execute() => transform(build().execute());
}
