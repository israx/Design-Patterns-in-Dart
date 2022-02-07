class Editor {
  String? _content;

  String? get() => _content;

  void setContent(String value) {
    _content = value;
  }

  void undo() {
    _content = null;
  }
}

void main() {
  Editor instance = Editor();
}
