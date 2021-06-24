import '../_.imports.dart';

///
/// A rule with a build method.
/// The build method lets you compose.
///
abstract class CompositeRule<FACT extends Object, OUTPUT extends Object>
    extends CompositeBlock<RuleResponse<OUTPUT>> implements Rule<FACT, OUTPUT> {
  const CompositeRule();

  @override
  Rule<FACT, OUTPUT> build();
}
