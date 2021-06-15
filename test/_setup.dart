import 'package:zam_block_architecture/zam_block_architecture.dart';

class OddNumberRule extends CustomRule<int, int> {
  final int fact;
  int get value => fact;

  const OddNumberRule(this.fact);

  bool isSatisfied(int fact) {
    return fact % 2 != 0;
  }
}

class UpperBoundRule extends CustomRule<int, int> {
  final int fact;
  final int limit;
  int get value => fact;

  const UpperBoundRule(this.fact, this.limit);

  bool isSatisfied(int fact) {
    return fact < limit;
  }
}
