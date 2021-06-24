# Block Architecture

Architecture that bridges the gap between Business Analysts and Developers.
  
[![Version](https://img.shields.io/pub/v/zam_block_architecture?color=%234287f5)](https://pub.dev/packages/zam_block_architecture)
[![Build](https://github.com/zamstation/zam_block_architecture/actions/workflows/build.yaml/badge.svg)](https://github.com/zamstation/zam_block_architecture/actions/workflows/build.yaml)
[![Stars](https://img.shields.io/github/stars/zamstation/zam_block_architecture.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/zamstation/zam_block_architecture/stargazers)
[![License](https://img.shields.io/github/license/zamstation/zam_block_architecture)](https://pub.dev/packages/zam_block_architecture/license)

## What's inside the package

  * [Block](https://pub.dev/documentation/zam_block_architecture/latest/zam_block_architecture/Block-class.html)
  * [Logic](https://pub.dev/documentation/zam_block_architecture/latest/zam_block_architecture/Logic-class.html)
  * [Rule](https://pub.dev/documentation/zam_block_architecture/latest/zam_block_architecture/Rule-class.html)
  * [Sanitizer](https://pub.dev/documentation/zam_block_architecture/latest/zam_block_architecture/Sanitizer-class.html)

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
```

To learn more, move on to the [example section](https://pub.dev/packages/zam_block_architecture/example) or check out this dedicated [example in github](https://github.com/zamstation/zam_block_architecture/blob/main/example/lib/main.dart).

## Contributors
  * [Amsakanna](https://github.com/amsakanna)
