import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/domain/home/entity/book_entity.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> getFeatureBooks();

  Future<Either<Failure, List<BookEntity>>>getNewsBooks();
}
