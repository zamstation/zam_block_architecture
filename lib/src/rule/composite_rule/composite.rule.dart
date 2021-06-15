import '../_.imports.dart';

abstract class CompositeRule<FACT extends Object, OUTPUT extends Object>
    extends CompositeBlock<RuleResponse<OUTPUT>> implements Rule<FACT, OUTPUT> {
  const CompositeRule();

  @override
  Rule<FACT, OUTPUT> build();
}
