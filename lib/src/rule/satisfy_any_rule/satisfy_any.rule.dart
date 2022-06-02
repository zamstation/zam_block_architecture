import '../_.imports.dart';
import '../list_rule/list.rule.dart';

///
/// Succeeds only if at least one of its children succeed.
///
class SatisfyAnyRule<FACT extends Object, VALUE extends Object>
    extends ListRule<FACT, VALUE> {
  @override
  final FACT fact;
  @override
  final Iterable<Rule<FACT, VALUE>> children;

  const SatisfyAnyRule(
    this.fact, {
    required this.children,
  });

  @override
  SatisfyAnyRuleResponse<VALUE> execute() {
    for (final rule in children) {
      final response = rule.execute();
      if (response.isSuccess) {
        return SatisfyAnyRuleResponse.fromRuleResponse(response, rule);
      }
    }
    return SatisfyAnyRuleResponse.failed();
  }
}

///
/// Contains the rule that succeeded in addition to other data.
///
class SatisfyAnyRuleResponse<VALUE extends Object> extends RuleResponse<VALUE> {
  ///
  /// The rule that succeeded.
  ///
  final Rule? successRule;

  ///
  /// Copies data from the given RuleResponse.
  ///
  SatisfyAnyRuleResponse.fromRuleResponse(
    RuleResponse<VALUE> response,
    this.successRule,
  ) : super.fromSelf(response);

  ///
  /// Sets the succesRule to null.
  ///
  SatisfyAnyRuleResponse.failed({VALUE? fallbackValue})
      : successRule = null,
        super.failed(fallbackValue: fallbackValue);
}
