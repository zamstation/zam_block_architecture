import 'package:zam_block_architecture/zam_block_architecture.dart';
import 'package:zam_test/zam_test.dart';

import '_setup.dart';

void main() {
  SatisfyAnyRuleTest().execute();
}

class SatisfyAnyRuleTest extends Test<int, bool> {
  bool run(int input) {
    final rule = SatisfyAllRule(input, input, children: [
      OddNumberRule(input),
      UpperBoundRule(input, 20),
    ]);
    return rule.execute().isSuccess;
  }

  get cases => [
        ValueTestCase(
          when: 'The value 13',
          then: 'returns true',
          input: 13,
          output: true,
        ),
        ValueTestCase(
          when: 'The value 21',
          then: 'is out of bounds',
          input: 21,
          output: false,
        ),
      ];
}
