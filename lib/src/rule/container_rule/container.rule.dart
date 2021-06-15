import '../_.imports.dart';

abstract class ContainerRule<FACT extends Object, VALUE extends Object>
    extends ContainerBlock<RuleResponse<VALUE>> implements Rule<FACT, VALUE> {}
