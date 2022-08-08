import 'package:dio/dio.dart';
import 'package:movie_streaming_app/models/movie_model.dart';

class MovieRepository {
  final Dio dio = Dio();

  Future<List<MovieModel>> findAll() async {
    final response = await dio.get(
        'https://api.themoviedb.org/3/movie/popular?api_key=ca72357c358861d55696a6d8da747b13&language=en-US&page=1');

    final result = await response.data['results'] as List;

    return result.map<MovieModel>((e) {
      return MovieModel.fromMap(e);
    }).toList();
  }
}
