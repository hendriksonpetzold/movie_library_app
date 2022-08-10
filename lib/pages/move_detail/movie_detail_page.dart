import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/components/custom_back_button.dart';
import 'package:movie_streaming_app/components/favorite_button.dart';
import 'package:movie_streaming_app/pages/move_detail/components/move_detail_information_box.dart';
import 'package:movie_streaming_app/pages/move_detail/movie_detail_controller.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class MovieDetailPage extends StatelessWidget {
  MovieDetailPage({Key? key}) : super(key: key);
  final MovieDetailController controller = Get.put(MovieDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://image.tmdb.org/t/p/w220_and_h330_face${controller.movieImage}',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 60, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(onTap: () {
                    Get.back();
                  }),
                  Expanded(child: Container()),
                  const FavoriteButton(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
                bottom: 24,
              ),
              height: MediaQuery.of(context).size.height * .7,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                    0.02,
                    0.1,
                    0.2,
                    0.85,
                    0.95,
                  ],
                  colors: AppColors.movieDetailGradient,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .08,
                  ),
                  Text(
                    controller.movieTitle.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MovieDetailInformationBox(
                    releaseDate: controller.releaseDate,
                    grade: controller.grade,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    controller.movieOverview,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
