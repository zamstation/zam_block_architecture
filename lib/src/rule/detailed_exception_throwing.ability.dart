import 'package:zam_core/zam_core.dart';

import 'rule.dart';
import 'rule.response.dart';

///
/// A mixin that allows us to throw exceptions with details of
/// when the rule fails.
///
mixin DetailedExceptionThrowingAbility<
    FACT extends Object,
    VALUE extends Object,
    EXCEPTION_DETAILS extends Object> on Rule<FACT, VALUE> {
  NamedException buildException(RuleResponse<VALUE> response,
      [EXCEPTION_DETAILS? exceptionDetails]);

  RuleResponse<VALUE> executeAndThrow([EXCEPTION_DETAILS? exceptionDetails]) {
    final response = execute();
    final exception = buildException(response, exceptionDetails);
    final successResponse = response.throwIfFailed(exception);
    return successResponse;
  }

  RuleResponse<VALUE> applyAndThrow([EXCEPTION_DETAILS? exceptionDetails]) =>
      executeAndThrow(exceptionDetails);
}
