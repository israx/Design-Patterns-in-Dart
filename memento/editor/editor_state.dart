class EditorState {
  late final String? _content;

  EditorState({required String? state}) {
    _content = state;
  }

  String? get() => _content;
}
