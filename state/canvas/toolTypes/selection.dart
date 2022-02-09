import '../tool.dart';

class Selection implements Tool {
  @override
  void mouseDown() {
    print("pointer activated");
  }

  @override
  void mouseUp() {
    print("area selected");
  }
}
