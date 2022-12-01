import 'package:movie_app/repositories/movies_repository.dart';
import '../models/movie_model.dart';
import 'movies_repository_decorator.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(MoviesRepository moviesRepository)
    : super(moviesRepository);
  
  @override
  Future<Movies> getMovies() async {
    return super.getMovies();
  }

}