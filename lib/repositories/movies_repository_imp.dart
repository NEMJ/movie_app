import '../utils/apis.utils.dart';
import '../service/dio_service.dart';
import '../models/movie_model.dart';
import './movies_repository.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    await Future.delayed(const Duration(seconds: 3));
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}