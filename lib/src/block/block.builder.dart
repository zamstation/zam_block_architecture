import 'block.dart';

///
/// A builder that returns a block.
///
typedef BlockBuilder<OUTPUT extends Object> = Block<OUTPUT> Function();

///
/// A parameterized builder that returns a block.
///
typedef ParameterizedBlockBuilder<OUTPUT extends Object, INPUT extends Object>
    = Block<OUTPUT> Function(INPUT input);
