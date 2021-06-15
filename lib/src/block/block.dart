import 'package:zam_command_pattern/zam_command_pattern.dart';

///
/// A block is a piece of code, wrapped inside an execute Function
/// just like a command. It is a alias for Command so that it can
/// parent concepts like logic, rule, sanitizer, etc.
///
abstract class Block<OUPUT extends Object> implements Command<OUPUT> {
  const Block();

  ///
  /// An alias for the execute function.
  ///
  OUPUT apply() => execute();
}
