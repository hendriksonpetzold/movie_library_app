import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/components/movie_card.dart';

import 'package:movie_streaming_app/pages/home/home_controller.dart';

class SearchMovieListView extends GetView<HomeController> {
  const SearchMovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        width: 300,
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 16),
          shrinkWrap: true,
          itemCount: controller.movieSearch.length,
          itemBuilder: (context, index) {
            final list = controller.movieSearch[index];
            return InkWell(
              onTap: () {},
              child: MovieCard(
                title: list.title,
                grade: list.grade.toString(),
                image: list.posterPath,
              ),
            );
          },
        ),
      );
    });
  }
}
