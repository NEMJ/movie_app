// ignore_for_file: non_constant_identifier_names, constant_identifier_names

class API {
  static String REQUEST_IMG(String _img) =>
    'https://image.tmdb.org/t/p/w500/$_img';
  
  static const REQUEST_MOVIE_LIST = 'list/1?page=1';
}