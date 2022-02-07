import 'editor_state.dart';
import 'history.dart';

class Editor {
  String? _content;

  String? getContent() => _content;
  void setContent(String value) => _content = value;

  EditorState createState() {
    return EditorState(state: _content);
  }

  void restore(EditorState state) {
    _content = state.get();
  }

  @override
  String toString() {
    if (_content != null) return _content!;

    return "there's no content to show";
  }
}

void main() {
  var editor = Editor();
  var history = History();
  editor.setContent("A");
  history.push(editor.createState());
  editor.setContent("B");
  history.push(editor.createState());
  editor.setContent("C");

  editor.restore(history.pop());
  editor.restore(history.pop());

  print(editor);
}
