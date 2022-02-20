import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/article_model.dart';
part 'articles_remote_data_source.g.dart';

@injectable
@RestApi(baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo')
abstract class ArticlesRemoteRetroFitDataSource {
  factory ArticlesRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _ArticlesRemoteRetroFitDataSource;

  @GET("/articles")
  Future<List<ArticleModel>> getArticles();
}

// class ArticlesRemoteDioDataSource {
//   Future<List<Map<String, dynamic>>?> getArticles() async {
//     final response = await Dio().get<List<dynamic>>(
//         'http://my-json-server.typicode.com/adamsmaka/json-demo/articles');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }
