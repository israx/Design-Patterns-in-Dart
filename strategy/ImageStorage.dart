import 'compresor/compresor.dart';
import 'compresor/jpeg.dart';
import 'filter/filter.dart';
import 'filter/white_dark.dart';

class ImageStorage {
  void store(String file, Filter filter, Compresor compresor) {
    filter.apply(file);
    compresor.compres(file);
  }
}

void main() {
  ImageStorage storage = ImageStorage();
  storage.store("file", WhiteDark(), JPEG());
}
