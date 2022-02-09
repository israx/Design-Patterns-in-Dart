import '../tool.dart';

class Brush implements Tool {
  @override
  void mouseDown() {
    print("brush selected");
  }

  @override
  void mouseUp() {
    print("paint");
  }
}
