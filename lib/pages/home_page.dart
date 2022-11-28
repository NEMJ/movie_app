import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/widgets/custom_list_card_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              ValueListenableBuilder<Movies?>(
                valueListenable: _controller.movies,
                builder: (_, movies, __) {
                  return Visibility(
                    visible: movies != null,
                    child: Text(
                      'Movies',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  );
                }
              ),
              ValueListenableBuilder<Movies?>(
                valueListenable: _controller.movies,
                builder: (_, movies, __) {
                  return movies != null
                  ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: movies.listMovies.length,
                    itemBuilder: (_, index) => CustomListCardWidget(
                      movie: movies.listMovies[index],
                    ),
                  )
                  : Lottie.asset('assets/lottie.json');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}