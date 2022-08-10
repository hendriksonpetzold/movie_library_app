import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/home_page.dart';
import 'package:movie_streaming_app/pages/move_detail/movie_detail_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => HomePage(),
      children: [
        GetPage(name: '/movie_detail_page', page: () => MovieDetailPage())
      ],
    ),
  ];
}
