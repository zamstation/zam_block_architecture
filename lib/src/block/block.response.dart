import 'package:zam_core/meta.dart';

///
/// An optional wrapper for Block Output which can be used
/// for chaining.
///
@immutable
class BlockResponse<VALUE extends Object> {
  final VALUE? value;

  const BlockResponse(this.value);

  BlockResponse<NEW_VALUE> transform<NEW_VALUE extends Object>(
    NEW_VALUE Function(VALUE? value) transformer,
  ) {
    return BlockResponse<NEW_VALUE>(transformer(value));
  }

  BlockResponse<NEW_VALUE> transformWith<NEW_VALUE extends Object>(
    NEW_VALUE value,
  ) {
    return BlockResponse<NEW_VALUE>(value);
  }
}
