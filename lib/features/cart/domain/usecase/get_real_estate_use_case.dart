import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../data/model/real_estate_model.dart';
import '../repository/real_estate_repository.dart';

class GetAllCartsUseCase {
  final CartRepository repository;
  GetAllCartsUseCase(this.repository);
  Future<Either<Failure, RealEstateModel>> call(int dataSource) async {
    return await repository.getRealEstates();
  }
}
