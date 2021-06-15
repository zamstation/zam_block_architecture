import '../_.imports.dart';
import '../list_rule/list.rule.dart';

///
/// Succeeds only when all its children succeed.
///
class SatisfyAllRule<FACT extends Object, VALUE extends Object>
    extends ListRule<FACT, VALUE> {
  @override
  final fact;
  @override
  final Iterable<Rule<FACT, VALUE>> children;
  final VALUE value;

  const SatisfyAllRule(
    this.fact,
    this.value, {
    required this.children,
  });

  @override
  RuleResponse<VALUE> execute() {
    return children.map((rule) => rule.execute()).firstWhere(
          (response) => response.isFailure,
          orElse: () => RuleResponse.succeeded(value),
        );
  }
}
