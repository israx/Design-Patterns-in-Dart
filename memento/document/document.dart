import 'document_state.dart';
import 'history.dart';

enum FontFamily { ARIAL, TIMES, AMAZON, APPLE }

class Document {
  String? _content;
  FontFamily _fontFamily = FontFamily.ARIAL;
  int _fontSize = 12;

  // Setters
  void setContent(String content) => _content = content;
  void setFontFamily(FontFamily family) => _fontFamily = family;
  void setFontSize(int size) => _fontSize = size;

  // Getters
  String? getContent() => _content;
  FontFamily getFontName() => _fontFamily;
  int getFontSize() => _fontSize;

  // Methods
  DocumentState createState() => DocumentState(
      content: _content, fontFamily: _fontFamily, fontSize: _fontSize);

  void recover(DocumentState state) {
    _content = state.content;
    _fontFamily = state.fontFamily;
    _fontSize = state.fontSize;
  }

  @override
  String toString() {
    return 'fontFamily: $_fontFamily, fontSize: $_fontSize, content: $_content';
  }
}

void main() {
  Document document = Document();
  HistoryDocument history = HistoryDocument();

  document.setContent("Hello");
  document.setFontSize(14);
  document.setFontFamily(FontFamily.AMAZON);

  history.add(document.createState());

  document.setFontSize(18);
  history.add(document.createState());

  document.setFontSize(16);

  document.recover(history.pop());
  print(document);
  document.recover(history.pop());

  print(document);
}
