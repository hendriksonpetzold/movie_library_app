import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/components/home_movie_card.dart';

import 'package:movie_streaming_app/pages/home/home_controller.dart';

class HomeSearchMovieListView extends GetView<HomeController> {
  const HomeSearchMovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        width: 300,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: controller.movieSearch.length,
          itemBuilder: (context, index) {
            final list = controller.movieSearch[index];
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(
                      '/movie_detail_page',
                      arguments: {
                        'movieImage': list.posterPath,
                        'movieTitle': list.title,
                        'movieOverview': list.description,
                        'releaseDate': list.releaseDate,
                        'grade': list.grade,
                      },
                    );
                  },
                  child: HomeMovieCard(
                    title: list.title,
                    grade: list.grade.toString(),
                    image: list.posterPath,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            );
          },
        ),
      );
    });
  }
}
