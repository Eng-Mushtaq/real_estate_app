import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../data/model/real_estate_model.dart';
abstract class CartRepository {
  Future<Either<Failure, RealEstateModel>> getRealEstates();
}
