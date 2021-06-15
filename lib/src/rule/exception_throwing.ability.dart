import 'package:zam_core/zam_core.dart';

import 'rule.dart';
import 'rule.response.dart';

///
/// A mixin that allows us to throw exceptions when the rule fails.
///
mixin ExceptionThrowingAbility<FACT extends Object, VALUE extends Object>
    on Rule<FACT, VALUE> {
  NamedException buildException(RuleResponse<VALUE> response);

  RuleResponse<VALUE> executeAndThrow() {
    final response = execute();
    final exception = buildException(response);
    final successResponse = response.throwIfFailed(exception);
    return successResponse;
  }

  RuleResponse<VALUE> applyAndThrow() => executeAndThrow();
}
