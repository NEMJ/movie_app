import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../repositories/movies_repository.dart';
import '../models/movie_model.dart';
import './movies_repository_decorator.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(MoviesRepository moviesRepository)
    : super(moviesRepository);
  
  @override
  Future<Movies> getMovies() async {
    try {
      Movies movies = await super.getMovies();
      _saveInCache(movies);
      return movies;
    } catch (e) {
      return await _getInCache();
    }

  }

  _saveInCache(Movies movies) async {
    var prefs = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(movies.toJson());
    prefs.setString('movies_cache', jsonMovies);
    print('Salvou no cache os filmes ' + jsonMovies);
  }

  Future<Movies> _getInCache() async {
    var prefs = await SharedPreferences.getInstance();
    var moviesJsonString = prefs.getString('movies_cache')!;
    var json = jsonDecode(moviesJsonString);
    var movies = Movies.fromJson(json);
    print('Recuperou do cache os filmes: ' + movies.toString());
    return movies;
  }
}