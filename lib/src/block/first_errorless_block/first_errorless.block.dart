import 'package:zam_core/zam_core.dart';

import '../block.dart';

///
/// Runs the first child that runs without an error.
///
class FirstErrorlessBlock<OUTPUT extends Object> extends Block<OUTPUT> {
  final Iterable<Callback<OUTPUT>> children;
  final Callback<OUTPUT>? defaultChild;

  const FirstErrorlessBlock(this.children, [this.defaultChild]);

  ///
  /// [BANG OPERATOR ALERT]!
  /// defaultChild is already checked for null.
  ///
  @override
  execute() {
    final defaultChildBuilder =
        defaultChild == null ? null : () => defaultChild!;
    final child =
        children.firstWhere(_isValidChild, orElse: defaultChildBuilder);
    return child();
  }

  bool _isValidChild(Callback<OUTPUT> child) {
    late final bool doesNotThrow;
    try {
      child();
      doesNotThrow = true;
    } catch (e) {
      doesNotThrow = false;
    }
    return doesNotThrow;
  }
}
