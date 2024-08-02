
import 'package:cinemapedia/config/constants/enviroment.dart';
import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/themoviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorTheMovieDbDatasource extends ActorsDatasource {

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie',
    queryParameters: {
      'api_key': Enviroment.theMovieDBKey,
      'language': 'es-MX'
    }
  ));

  List<Actor> _jsonToActors(Map<String, dynamic> json) {
    final creditsResponse = CreditsResponse.fromJson(json);

    final List<Actor> actors = creditsResponse.cast
    .map((actor) => ActorMapper.castToEntity(actor)).toList();

  return actors;

  }

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {

    final response = await dio.get('/$movieId/credits',);

    return _jsonToActors(response.data);

  }


}