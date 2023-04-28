import 'package:equatable/equatable.dart';

enum Sort { asc, desc }

class SortBy extends Equatable {
  final String propertyName;
  final Sort sort;

  SortBy({required this.propertyName, required this.sort});

  @override
  String toString() {
    return "SortBy(propertyName: $propertyName, sort: $sort)";
  }

  @override
  List<Object?> get props => [propertyName, sort];
}
