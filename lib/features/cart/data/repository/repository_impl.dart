// import 'package:dartz/dartz.dart';
// import '../../../../core/error/failures.dart';
// import '../../../../core/network/network_info.dart';
// import '../../domain/repository/real_estate_repository.dart';
// import '../datasource/cart_remote_data_source.dart';
// import '../model/real_estate_model.dart';

// class CartRepositoryImpl implements CartRepository {
//   final CartRemoteDataSource remoteDataSource;
//   final NetworkInfo networkInfo;

//   CartRepositoryImpl(
//       {required this.remoteDataSource, required this.networkInfo});

//   @override
//   Future<Either<Failure, RealEstateModel>> getRealEstates() async {
//     if (await networkInfo.isConnected) {
//       try {
//         final remoteCartData = await remoteDataSource.getCart();

//         return Right(remoteCartData);
//       } on ServerFailure {
//         return Left(ServerFailure());
//       } on NoAuthFailure {
//         return Left(NoAuthFailure());
//       }
//     } else {
//       try {
//         // final localTypes = await localDataSource.getCachedCart();
//         return Left(ServerFailure());
//       } on EmptyCacheException {
//         return Left(EmptyCacheFailure());
//       }
//     }
//   }
// }
