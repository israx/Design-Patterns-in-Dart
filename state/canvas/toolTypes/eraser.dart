import '../tool.dart';

class Eraser implements Tool {
  @override
  void mouseDown() {
    print("Select area to erase");
  }

  @override
  void mouseUp() {
    print("Erase area selected");
  }
}
