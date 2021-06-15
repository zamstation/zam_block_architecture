import 'package:zam_command_pattern/zam_command_pattern.dart';

import '../logic.dart';

///
/// A logic that accepts an input.
///
abstract class ParameterizedLogic<INPUT extends Object, OUTPUT extends Object>
    extends Logic<OUTPUT> implements ParameterizedCommand<INPUT, OUTPUT> {
  const ParameterizedLogic();
}
