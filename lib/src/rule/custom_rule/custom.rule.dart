import '../_.imports.dart';

abstract class CustomRule<FACT extends Object, VALUE extends Object>
    extends Rule<FACT, VALUE> {
  @protected
  VALUE get value;

  const CustomRule();

  @protected
  bool isSatisfied(FACT fact);

  @override
  execute() => RuleResponse.auto(isSatisfied(fact), value);
}
