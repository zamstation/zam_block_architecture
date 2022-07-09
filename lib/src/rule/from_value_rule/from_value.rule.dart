import '../composite_rule/composite.rule.dart';
import '../simple_rule/simple.rule.dart';

///
/// Succeeds when value is not null.
///
class FromValueRule<FACT extends Object, VALUE extends Object>
    extends CompositeRule<FACT, VALUE> {
  @override
  final FACT fact;
  final VALUE? Function(FACT fact) valueGenerator;

  const FromValueRule(this.fact, this.valueGenerator);

  @override
  build() {
    final value = valueGenerator(fact);
    return SimpleRule(fact, value, (fact) => value != null);
  }
}
