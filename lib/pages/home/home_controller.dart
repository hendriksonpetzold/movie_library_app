import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/enums/movie_list_enum.dart';
import 'package:movie_streaming_app/models/movie_model.dart';
import 'package:movie_streaming_app/repository/movie_repository.dart';

class HomeController extends GetxController {
  final TextEditingController searchEditingController = TextEditingController();
  final MovieRepository repository = MovieRepository();
  List<MovieModel> movieList = [];
  RxString carouselTitle = RxString('Best action movies');
  final Rx<MovieListEnum> _activeList = Rx<MovieListEnum>(MovieListEnum.action);
  MovieListEnum get activeList => _activeList.value;

  Future<void> fetchMovies() async {
    final result = await repository.findAll();
    movieList = result;
  }

  void changeList({required MovieListEnum list}) {
    _activeList.value = list;
  }

  Rx<bool> checkActiveList({required MovieListEnum list}) {
    if (list == _activeList.value) return Rx<bool>(true);
    return Rx<bool>(false);
  }

  int getListIndex() {
    switch (_activeList.value) {
      case MovieListEnum.action:
        carouselTitle.value = 'Best action movies';
        return 0;

      case MovieListEnum.adventure:
        carouselTitle.value = 'Best adventure movies';
        return 1;

      case MovieListEnum.comedy:
        carouselTitle.value = 'Best comedy movies';
        return 2;

      case MovieListEnum.drama:
        carouselTitle.value = 'Best drama movies';
        return 3;

      case MovieListEnum.horror:
        carouselTitle.value = 'Best horror movies';
        return 4;

      case MovieListEnum.romance:
        carouselTitle.value = 'Best romance movies';
        return 5;
      default:
        return 0;
    }
  }
}
