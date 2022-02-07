import 'editor_state.dart';

class History {
  List<EditorState> _history = [];

  void push(EditorState state) => _history.add(state);
  EditorState pop() => _history.removeLast();
}
