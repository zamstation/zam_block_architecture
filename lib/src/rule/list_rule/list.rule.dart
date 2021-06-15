import '../_.imports.dart';

///
/// Container for a list of rules.
///
abstract class ListRule<FACT extends Object, VALUE extends Object>
    extends MultiChildBlock<RuleResponse<VALUE>> implements Rule<FACT, VALUE> {
  const ListRule();
}
