import 'package:repository/repository.dart';
import 'package:test/test.dart';

void main() {
  late Query query;

  setUp(() => query = Query());

  group('Query', () {
    test('has skipCount', () {
      query.skip(10);
      expect(query.skipCount, 10);
    });
    test('has limitCount', () {
      query.limit(10);
      expect(query.limitCount, 10);
    });
    test('has sortByProperties', () {
      query
        ..sortByProperty(propertyName: 'name', sort: Sort.asc)
        ..sortByProperty(propertyName: 'name2', sort: Sort.desc);
      expect(query.sortBy, [
        SortBy(propertyName: 'name', sort: Sort.asc),
        SortBy(propertyName: 'name2', sort: Sort.desc),
      ]);
    });
  });
}
