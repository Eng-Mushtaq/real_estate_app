import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {}
class NoInternetFailure extends Failure {}
class NoAuthFailure extends Failure {}
class CacheFailure extends Failure {}




class OfflineFailure extends Failure {
  @override
  List<Object?> get props => [];
}

// class ServerFailure extends Failure {
  // @override
  // List<Object?> get props => [];
// }

class EmptyCacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}




class ServerException implements Exception {}

class EmptyCacheException implements Exception {}

class OfflineException implements Exception {}
