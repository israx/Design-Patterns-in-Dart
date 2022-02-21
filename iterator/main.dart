import 'browse_history.dart';
import 'iterator.dart';

void main() {
  BrowseHistory history = BrowseHistory();

  history.push("url-a");
  history.push("url-b");
  history.push("url-c");
  history.push("url-d");

  Iterator iterator = history.createIterator();

  while (iterator.hasNext()) {
    print(iterator.current());

    iterator.next();
  }
}
