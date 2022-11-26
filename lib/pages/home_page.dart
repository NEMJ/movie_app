import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../repositories/movies_repository_imp.dart';
import '../service/dio_service_imp.dart';
import '../controllers/movie_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller =
    MovieController(
      MoviesRepositoryImp(DioServiceImp()),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Movies?>(
        valueListenable: _controller.movies,
        builder: (_, movies, __) {
          return movies != null
          ? ListView.builder(
            itemCount: movies.listMovies.length,
            itemBuilder: (_, index) => 
              Text(movies.listMovies[index].title),
          )
          : Container();
        },
      ),
    );
  }
}