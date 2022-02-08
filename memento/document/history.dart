import 'document_state.dart';

class HistoryDocument {
  List<DocumentState> _list = [];

  void add(DocumentState state) => _list.add(state);

  DocumentState pop() => _list.removeLast();
}
