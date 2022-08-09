import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/components/movie_card.dart';
import 'package:movie_streaming_app/pages/home/home_controller.dart';

class HomeCarousel extends GetView<HomeController> {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible: controller.isCarouselVisible.value,
        child: SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: controller.actionList.length,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: MediaQuery.of(context).size.height * .4,
            ),
            itemBuilder: (context, index, realIndex) {
              final list = controller.actionList[index];
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
        ),
      );
    });
  }
}
