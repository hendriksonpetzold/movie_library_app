import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/enums/movie_list_enum.dart';
import 'package:movie_streaming_app/models/movie_model.dart';
import 'package:movie_streaming_app/repository/movie_repository.dart';

class HomeController extends GetxController {
  final TextEditingController searchEditingController = TextEditingController();

  RxBool isCarouselVisible = RxBool(true);

  RxInt genre = RxInt(28);
  final MovieRepository repository = MovieRepository();

  List<MovieModel> movie = [];
  RxList<MovieModel> movieGenre = RxList([]);
  RxList<MovieModel> movieSearch = RxList([]);
  RxString carouselTitle = RxString('All movies');
  final Rx<MovieListEnum> _activeList = Rx<MovieListEnum>(MovieListEnum.all);
  MovieListEnum get activeList => _activeList.value;
  @override
  onInit() async {
    await fetchMovies();
    getListByGenre();
    movieGenre.value = movie;
    movieSearch.value = movie;
    super.onInit();
  }

  Future<void> fetchMovies() async {
    final result = await repository.findAll();
    movie = result;
    await fetchMoviesByGenre();
  }

  Future<void> fetchMoviesByGenre() async {
    final result = await repository.findAll();
    List<MovieModel> newList = result
        .where((element) => element.genreIds.contains(genre.value))
        .toList();
    movieGenre.value = newList;
  }

  void searchMovie() {
    List<MovieModel> newList = movieGenre
        .where((item) => item.title.contains(searchEditingController.text))
        .toList();
    movieSearch.value = newList;
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
      case MovieListEnum.all:
        movieGenre.value = movie;
        carouselTitle.value = 'All movies';
        break;
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
