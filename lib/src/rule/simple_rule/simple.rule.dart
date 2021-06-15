import '../_.imports.dart';

///
/// Succeeds when the given condition is true.
///
class SimpleRule<FACT extends Object, VALUE extends Object>
    extends Rule<FACT, VALUE> {
  @override
  final FACT fact;
  final VALUE? _value;
  final bool Function(FACT fact) _isSatisfied;

  const SimpleRule(this.fact, VALUE? value, bool Function(FACT fact) condition)
      : _value = value,
        _isSatisfied = condition;

  @override
  RuleResponse<VALUE> execute() =>
      RuleResponse.auto(_isSatisfied(fact), _value);
}
