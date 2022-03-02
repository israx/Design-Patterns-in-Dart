import 'compresor.dart';

class JPEG implements Compresor {
  @override
  void compres(String file) {
    print("compresing $file to JPEG");
  }
}
