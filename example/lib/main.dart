// ignore_for_file: avoid_print

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

void main() {
  final input = 13;
  final rule = SatisfyAllRule(input, input, children: [
    OddNumberRule(input),
    UpperBoundRule(input, 20),
  ]);
  final ruleResponse = rule.execute();
  print(ruleResponse.isSuccess); // prints true

  final input2 = 21;
  final rule2 = SatisfyAllRule(input2, input2, children: [
    OddNumberRule(input2),
    UpperBoundRule(input2, 20),
  ]);
  final ruleResponse2 = rule2.execute();
  print(ruleResponse2.isSuccess); // prints false
}
