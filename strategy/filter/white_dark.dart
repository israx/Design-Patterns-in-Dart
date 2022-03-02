import 'filter.dart';

class WhiteDark implements Filter {
  @override
  void apply(String file) {
    print("Black and white filtered applyied to $file");
  }
}
