import 'iterator.dart';

// manages the browser history
class BrowseHistory {
  List<String> _urls = [];

  void push(String url) => _urls.add(url);

  String pop() => _urls.removeLast();

  Iterator createIterator() => ListIterator(this);
}

class ListIterator implements Iterator {
  final BrowseHistory browseHistory;
  int _index = 0;

  ListIterator(this.browseHistory);

  @override
  String current() => browseHistory._urls.elementAt(_index);

  @override
  void next() => _index++;

  @override
  bool hasNext() => (_index < browseHistory._urls.length);
}
