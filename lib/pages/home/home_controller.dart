import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/enums/movie_list_enum.dart';
import 'package:movie_streaming_app/models/movie_model.dart';
import 'package:movie_streaming_app/repository/movie_repository.dart';

class HomeController extends GetxController {
  final TextEditingController searchEditingController = TextEditingController();

  RxBool isCarouselVisible = RxBool(true);
  RxBool isSearchListVisible = RxBool(false);
  RxInt genre = RxInt(28);
  final MovieRepository repository = MovieRepository();
  List<MovieModel> movieList = [];
  List<MovieModel> actionList = [];
  RxList<MovieModel> searchList = RxList([]);
  RxString carouselTitle = RxString('Best action movies');
  final Rx<MovieListEnum> _activeList = Rx<MovieListEnum>(MovieListEnum.all);
  MovieListEnum get activeList => _activeList.value;

  @override
  onInit() {
    fetchMovies();
    searchList.value = movieList;
    super.onInit();
  }

  Future<void> fetchMovies() async {
    final result = await repository.findAll();

    movieList = result;
  }

  Future<void> fetchMoviesByGenre() async {
    final result = await repository.findAll();
    List<MovieModel> newList = result
        .where((element) => element.genreIds.contains(genre.value))
        .toList();
    actionList = newList;
  }

  void movieSearch() {
    List<MovieModel> newList = movieList
        .where((item) => item.title.contains(searchEditingController.text))
        .toList();
    searchList.value = newList;
  }

  void changeList({required MovieListEnum list}) {
    _activeList.value = list;
  }

  Rx<bool> checkActiveList({required MovieListEnum list}) {
    if (list == _activeList.value) return Rx<bool>(true);
    return Rx<bool>(false);
  }

  void getListByGenre() {
    switch (_activeList.value) {
      case MovieListEnum.action:
        genre.value = 28;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best action movies';
        break;

      case MovieListEnum.adventure:
        genre.value = 12;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best adventure movies';
        break;

      case MovieListEnum.comedy:
        genre.value = 35;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best comedy movies';
        break;

      case MovieListEnum.drama:
        genre.value = 18;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best drama movies';
        break;

      case MovieListEnum.horror:
        genre.value = 27;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best horror movies';
        break;

      case MovieListEnum.romance:
        genre.value = 10749;
        fetchMoviesByGenre();
        carouselTitle.value = 'Best romance movies';
        break;
      default:
    }
  }
}
