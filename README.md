# Block Architecture

Architecture that bridges the gap between Business Analysts and Developers.

## What's inside the package

- [Block](https://pub.dev/documentation/zam_block_architecture/latest/block/Block-class.html)
- [Logic](https://pub.dev/documentation/zam_block_architecture/latest/logic/Logic-class.html)
- [Rule](https://pub.dev/documentation/zam_block_architecture/latest/rule/Rule-class.html)
- [Sanitizer](https://pub.dev/documentation/zam_block_architecture/latest/sanitizer/Sanitizer-class.html)

Check out all the components in detail [here](https://pub.dev/documentation/zam_block_architecture/latest/zam_block_architecture/zam_block_architecture-library.html)

## How to use

```dart
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
```

To learn more, move on to the [example section](https://pub.dev/packages/zam_block_architecture/example) or check out these dedicated [examples in github](https://github.com/zamstation/zam_block_architecture/blob/main/example/lib).

## Status
[![Build](https://github.com/zamstation/zam_block_architecture/actions/workflows/build_workflow.yaml/badge.svg)](https://github.com/zamstation/zam_block_architecture/actions/workflows/build_workflow.yaml)

## Contributors
- [Amsakanna](https://github.com/amsakanna)

## License
[BSD 3-Clause License](https://github.com/zamstation/zam_block_architecture/blob/main/LICENSE)
