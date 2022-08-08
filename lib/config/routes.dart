import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/home_page.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => HomePage(),
    ),
  ];
}
