class Movies {
  Movies({
    required this.averageRating,
    required this.backdropPath,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.listMovies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });
  
  late final double averageRating;
  late final String backdropPath;
  late final CreatedBy createdBy;
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final String name;
  late final int page;
  late final String posterPath;
  late final bool public;
  late final List<Movie> listMovies;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  Movies.fromJson(Map<String, dynamic> json) {
    averageRating = json['averageRating'];
    backdropPath = json['backdropPath'];
    createdBy = CreatedBy.fromJson(json['createdBy']);
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
    page = json['page'];
    posterPath = json['posterPath'];
    public = json['public'];
    listMovies = 
      List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sortBy'];
    totalPages = json['totalPages'];
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
      _data['averageRating'] = averageRating;
      _data['backdropPath'] = backdropPath;
      _data['createdBy'] = createdBy.toJson();
      _data['description'] = description;
      _data['id'] = id;
      _data['iso_3166_1'] = iso_3166_1;
      _data['iso_639_1'] = iso_639_1;
      _data['name'] = name;
      _data['page'] = page;
      _data['posterPath'] = posterPath;
      _data['public'] = public;
      _data['results'] = listMovies.map((e) => e.toJson()).toList();
      _data['revenue'] = revenue;
      _data['runtime'] = runtime;
      _data['sortBy'] = sortBy;
      _data['totalPages'] = totalPages;
      _data['totalResults'] = totalResults;
      return _data;
  }
}

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.id,
    required this.name,
    required this.username,
  });

  late final String gravatarHash;
  late final String id;
  late final String name;
  late final String username;

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatarHash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gravatarHash'] = gravatarHash;
    _data['id'] = id;
    _data['name'] = name;
    _data['username'] = username;
    return _data;
  }
}

class Movie {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.orifinalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  late final adult;
  late final backdropPath;
  late final genreIds;
  late final id;
  late final mediaType;
  late final orifinalLanguage;
  late final originalTitle;
  late final overview;
  late final popularity;
  late final posterPath;
  late final releaseDate;
  late final title;
  late final video;
  late final voteAverage;
  late final voteCount;

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdropPath'];
    genreIds = json['genreIds'];
    id = json['id'];
    mediaType = json['mediaType'];
    orifinalLanguage = json['orifinalLanguage'];
    originalTitle = json['originalTitle'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['posterPath'];
    releaseDate = json['releaseDate'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['voteAverage'];
    voteCount = json['voteCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdropPath'] = backdropPath;
    _data['genreIds'] = genreIds;
    _data['id'] = id;
    _data['mediaType'] = mediaType;
    _data['orifinalLanguage'] = orifinalLanguage;
    _data['originalTitle'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['posterPath'] = posterPath;
    _data['releaseDate'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['voteAverage'] = voteAverage;
    _data['voteCount'] = voteCount;
    return _data;
  }
}