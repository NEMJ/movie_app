import 'package:dio/dio.dart';
import './dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type' : 'aplication/json;charset=utf-8',
          'authorization' : 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyNjI0MTA4YzRhN2FlYTBjYTEzZjM3NjVlYzE0MGY1ZiIsInN1YiI6IjYzN2VjMzUwMjIyMmY2MDBjMWM4MzRlMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.ee6i-rPM5ktF7u0suiN0J2hfHtZAygGyI8fW-iXH16Q',
        },
      ),
    );
  }
}