import './toolTypes/selection.dart';
import 'tool.dart';

class Canvas {
  Tool _tool = Selection();

  void mouseDown() {
    _tool.mouseDown();
  }

  void mouseUp() {
    _tool.mouseUp();
  }

  void setTool(Tool tool) => _tool = tool;
  Tool getTool() => _tool;
}
