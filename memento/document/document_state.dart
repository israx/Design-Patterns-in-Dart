import 'document.dart';

class DocumentState {
  final String? content;
  final FontFamily fontFamily;
  final int fontSize;

  DocumentState(
      {required this.content,
      required this.fontFamily,
      required this.fontSize});
}
