import '../_.imports.dart';

abstract class TransformableCompositeRule<FACT extends Object,
        OUTPUT extends Object, INTER_OUTPUT extends Object>
    extends TransformableCompositeBlock<RuleResponse<OUTPUT>,
        RuleResponse<INTER_OUTPUT>> implements Rule<FACT, OUTPUT> {
  const TransformableCompositeRule();
  @override
  Rule<FACT, INTER_OUTPUT> build();

  @override
  RuleResponse<OUTPUT> transform(RuleResponse<INTER_OUTPUT> response);
}
