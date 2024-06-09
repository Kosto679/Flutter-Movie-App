import 'package:get_it/get_it.dart';
import 'package:movie_app/model/app_config.dart';

class Movie {
  late final String name;
  late final String language;
  late final bool isAdult;
  late final String description;
  late final String posterPath;
  late final String backDropPath;
  late final num rating;
  late final String releaseDate;

  Movie(
      {required this.name,
      required this.language,
      required this.isAdult,
      required this.description,
      required this.posterPath,
      required this.backDropPath,
      required this.rating,
      required this.releaseDate});

  factory Movie.fromJson(Map<String, dynamic> _json) {
    return Movie(
      name: _json['title'],
      language: _json['original_language'],
      isAdult: _json['adult'],
      description: _json['description'],
      posterPath: _json['poster_path'],
      backDropPath: _json['backdrop_path'],
      rating: _json['vote_average'],
      releaseDate: _json['release_date'],
    );
  }

  String posterURL() {
    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_URL}${this.posterPath}';
  }
}
