import 'package:zam_core/meta.dart';
import 'package:zam_core/zam_core.dart';

import '../block/_.index.dart';

///
/// It is returned when a rule is executed.
///
/// A [RuleResponse] provides many useful information like
/// - if the rule was successful or not.
/// - the fact on which the rule was applied.
/// - the return value on success.
/// - the exception on failure.
///
@immutable
class RuleResponse<VALUE extends Object> implements BlockResponse<VALUE> {
  ///
  /// Set `true` when the rule succeeds.
  ///
  final bool isSuccess;
  @override
  final VALUE? value;
  final VALUE? fallbackValue;

  bool get isFailure => !(isSuccess);

  const RuleResponse._internal(this.isSuccess, this.value,
      [this.fallbackValue]);
  const RuleResponse.succeededWithNoData() : this._internal(true, null, null);
  const RuleResponse.succeeded(VALUE value) : this._internal(true, value, null);
  const RuleResponse.failed({VALUE? fallbackValue})
      : this._internal(false, null, fallbackValue);
  RuleResponse.fromSelf(RuleResponse<VALUE> self)
      : this._internal(self.isSuccess, self.value, self.fallbackValue);
  factory RuleResponse.auto(bool isSatisfied, VALUE? value,
          {VALUE? fallbackValue}) =>
      isSatisfied
          ? value == null
              ? RuleResponse.succeededWithNoData()
              : RuleResponse.succeeded(value)
          : RuleResponse.failed(fallbackValue: fallbackValue);
  factory RuleResponse.fromValue(VALUE? value) =>
      (value == null) ? RuleResponse.failed() : RuleResponse.succeeded(value);

  ///
  /// Exits the chain when an exception is occurred.
  ///
  RuleResponse<VALUE> throwIfFailed<EXCEPTION extends NamedException>(
      EXCEPTION exception) {
    return isFailure ? throw exception : this;
  }

  @override
  RuleResponse<NEW_VALUE> transform<NEW_VALUE extends Object>(
    NEW_VALUE Function(VALUE? value) transformer, {
    NEW_VALUE Function(VALUE? fallbackValue)? fallbackValueTransformer,
  }) {
    return isSuccess
        ? RuleResponse<NEW_VALUE>.succeeded(transformer(value))
        : RuleResponse<NEW_VALUE>.failed(
            fallbackValue: fallbackValueTransformer == null
                ? null
                : fallbackValueTransformer(fallbackValue));
  }

  @override
  RuleResponse<NEW_VALUE> transformWith<NEW_VALUE extends Object>(
    NEW_VALUE value, [
    NEW_VALUE? fallbackValue,
  ]) {
    return isSuccess
        ? RuleResponse<NEW_VALUE>.succeeded(value)
        : RuleResponse<NEW_VALUE>.failed(fallbackValue: fallbackValue);
  }
}
