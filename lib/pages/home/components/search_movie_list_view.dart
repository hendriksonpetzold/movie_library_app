import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/components/movie_card.dart';

import 'package:movie_streaming_app/pages/home/home_controller.dart';

class SearchMovieListView extends GetView<HomeController> {
  const SearchMovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible: controller.isSearchListVisible.value,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: 300,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.searchList.length,
            itemBuilder: (context, index) {
              final list = controller.searchList[index];
              return Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: MovieCard(
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
        ),
      );
    });
  }
}
