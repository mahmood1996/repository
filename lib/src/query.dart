import 'sort_by.dart';

class Query {
  late int _skipCount;
  late int _limitCount;
  late List<SortBy> _sortByProperties;

  Query() {
    _skipCount = 0;
    _limitCount = 0;
    _sortByProperties = [];
  }

  int get skipCount => _skipCount;

  int get limitCount => _limitCount;

  List<SortBy>? get sortBy => List.unmodifiable(_sortByProperties);

  void skip(int count) => _skipCount = count;

  void limit(int count) => _limitCount = count;

  void sortByProperty({required String propertyName, Sort sort = Sort.asc}) {
    _sortByProperties.add(SortBy(propertyName: propertyName, sort: sort));
  }
}
