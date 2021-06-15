import '../_.imports.dart';
import '../rule.dart';
import '../rule.response.dart';

abstract class FromValueCustomRule<FACT extends Object, VALUE extends Object>
    extends Rule<FACT, VALUE> {
  const FromValueCustomRule();

  @protected
  VALUE? generateValue(FACT fact);

  @override
  execute() {
    final value = generateValue(fact);
    return RuleResponse.fromValue(value);
  }
}
