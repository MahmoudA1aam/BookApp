import 'package:book_app/domain/home/repos/home_repo.dart';
import 'package:either_dart/either.dart';

import '../../../core/errors/failure.dart';
import '../entity/book_entity.dart';

class GetFeatureBooksUseCase {
  final HomeRepo homeRepo;

  GetFeatureBooksUseCase({required this.homeRepo});

  Future<Either<Failure, List<BookEntity>>> execute()async {

    return await homeRepo.getFeatureBooks();
  }
}
