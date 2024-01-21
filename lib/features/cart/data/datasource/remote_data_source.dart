// import 'dart:convert';

// import '../../../../../api/api_provider.dart';
// import '../../../../core/error/failures.dart';
// import '../model/real_estate_model.dart';
// abstract class CartRemoteDataSource {
//   Future<RealEstateModel> getCart();
// }


// class CartRemoteDataSourceImpl implements CartRemoteDataSource {
//   final ApiProvider client;
//   CartRemoteDataSourceImpl({required this.client});
//   @override
//   Future<RealEstateModel> getCart() async {
//     final response = await client.get('http://127.0.0.1:8000/api/get_real');
//     // print("response.body cart remote data source ");
//     // print(response.body);
//     if (response.statusCode == 200) {
//       final decodedJson = json.decode(response.body);
//       final RealEstateModel types =
//       RealEstateModel.fromJson(decodedJson);
//       return   types;
//     } if (response.statusCode == 403) {
//       throw NoAuthFailure();
//     }
//     else {
//       throw ServerException();
//     }
//   }
// }
