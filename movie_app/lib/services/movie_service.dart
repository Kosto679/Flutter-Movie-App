import 'package:get_it/get_it.dart';

import 'package:movie_app/services/http_service.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;

  late HttpService _httpService;

  MovieService() {
    _httpService = getIt.get<HttpService>();
  }
}
