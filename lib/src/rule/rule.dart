import '../block/_.index.dart';
import 'rule.response.dart';

///
/// A block that accepts a fact, validates it and returns
/// a [RuleResponse] which provides many useful information like
/// - if the rule was successful or not.
/// - the fact on which the rule was applied.
/// - the return value on success.
/// - the exception on failure.
///
abstract class Rule<FACT extends Object, VALUE extends Object>
    extends Block<RuleResponse<VALUE>> {
  FACT get fact;

  const Rule();
}
