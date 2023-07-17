extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
  Iterable<E> sortBy(Comparable Function(E e) key) =>
      toList()..sort((a, b) => key(a).compareTo(key(b)));
  Iterable<E> sortByReversed(Comparable Function(E e) key) =>
      sortBy((e) => key(e)).toList().reversed;
}
