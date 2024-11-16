import 'package:book_app/domain/home/entity/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>>getFeatureBooks();
  Future<List<BookEntity>>getNewsBooks();
}