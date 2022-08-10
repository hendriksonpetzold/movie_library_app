import 'package:get/get.dart';

class MovieDetailController extends GetxController {
  String movieImage = Get.arguments['movieImage'];
  String movieTitle = Get.arguments['movieTitle'];
  String movieOverview = Get.arguments['movieOverview'];
  String releaseDate = Get.arguments['releaseDate'];
  double grade = Get.arguments['grade'];
}
