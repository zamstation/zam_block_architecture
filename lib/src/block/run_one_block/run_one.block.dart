import '../block.dart';

///
/// Runs only the first block that satisfies the condition.
///
class RunOneBlock<OUTPUT extends Object> extends Block<OUTPUT> {
  final Map<bool Function(), OUTPUT Function()> children;
  final OUTPUT Function() defaultAction;

  get defaultCondition => () => true;

  const RunOneBlock(this.children, this.defaultAction);

  ///
  /// [BANG OPERATOR ALERT]!
  /// action cannot be null
  /// because there is a default condition which returns true always.
  ///
  @override
  execute() {
    final Map<bool Function(), OUTPUT Function()> newChildren =
        Map.from(children)..putIfAbsent(defaultCondition, () => defaultAction);
    final condition = newChildren.keys.firstWhere((condition) => condition());
    final action = newChildren[condition];
    return action!();
  }
}
