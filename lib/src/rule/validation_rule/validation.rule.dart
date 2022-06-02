import '../_.imports.dart';

class ValidationRule<FACT extends Object, VALUE extends Object,
        EXCEPTION extends NamedException>
    extends SingleChildBlock<RuleResponse<VALUE>> implements Rule<FACT, VALUE> {
  @override
  final FACT fact;
  @override
  final Rule<FACT, VALUE> child;
  final EXCEPTION _exception;

  const ValidationRule(
    this.fact,
    EXCEPTION exception, {
    required this.child,
  }) : _exception = exception;

  @override
  RuleResponse<VALUE> execute() => child.execute().throwIfFailed(_exception);
}
