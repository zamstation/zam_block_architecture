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
        BooleanTestCase.truthy(
          when: 'The value 13',
          input: 13,
        ),
        BooleanTestCase.falsy(
          when: 'The value 21',
          input: 21,
        ),
      ];
}
