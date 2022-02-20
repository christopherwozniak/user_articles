import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:user_articles/domain/models/author_model.dart';

part 'authors_remote_data_source.g.dart';

@injectable
@RestApi(baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo')
abstract class AuthorsRemoteRetroFitDataSource {
  @factoryMethod
  factory AuthorsRemoteRetroFitDataSource(Dio dio) =
      _AuthorsRemoteRetroFitDataSource;

  @GET("/users")
  Future<List<AuthorModel>> getAuthors();
}

// class AuthorsRemoteDioDataSource {
//   Future<List<Map<String, dynamic>>?> getAuthors() async {
//     final response = await Dio().get<List<dynamic>>(
//         'http://my-json-server.typicode.com/adamsmaka/json-demo/users');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }
