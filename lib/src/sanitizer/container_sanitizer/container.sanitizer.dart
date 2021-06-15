import '../../block/container_block/container.block.dart';
import '../sanitizer.dart';

abstract class ContainerSanitizer<DATA extends Object>
    extends ContainerBlock<DATA> implements Sanitizer<DATA> {
  const ContainerSanitizer();
}
