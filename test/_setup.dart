import 'package:zam_block_architecture/zam_block_architecture.dart';

class OddNumberRule extends CustomRule<int, int> {
  @override
  final int fact;
  @override
  int get value => fact;

  const OddNumberRule(this.fact);

  @override
  bool isSatisfied(int fact) {
    return fact % 2 != 0;
  }
}

class UpperBoundRule extends CustomRule<int, int> {
  @override
  final int fact;
  final int limit;
  @override
  int get value => fact;

  const UpperBoundRule(this.fact, this.limit);

  @override
  bool isSatisfied(int fact) {
    return fact < limit;
  }
}
