import 'package:zam_block_architecture/zam_block_architecture.dart';
import 'package:zam_test/zam_test.dart';

import '_setup.dart';

void main() {
  SatisfyAnyRuleTest().execute();
}

class SatisfyAnyRuleTest extends Test<int, bool> {
  @override
  bool run(int input) {
    final rule = SatisfyAllRule(input, input, children: [
      OddNumberRule(input),
      UpperBoundRule(input, 20),
    ]);
    return rule.execute().isSuccess;
  }

  @override
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
