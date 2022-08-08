import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/components/custom_app_bar.dart';
import 'package:movie_streaming_app/pages/home/components/custom_botton_navigation_bar.dart';
import 'package:movie_streaming_app/pages/home/components/home_carousel.dart';

import 'package:movie_streaming_app/pages/home/components/search_form_field.dart';
import 'package:movie_streaming_app/pages/home/components/search_movie_list_view.dart';
import 'package:movie_streaming_app/pages/home/components/select_movie_type_bar.dart';
import 'package:movie_streaming_app/pages/home/home_controller.dart';

import 'package:movie_streaming_app/style/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: AppColors.homeGradiente,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    const CustomAppBar(),
                    const SizedBox(
                      height: 8,
                    ),
                    const SearchFormField(),
                    const SizedBox(
                      height: 16,
                    ),
                    const SelectMovieTypeBar(),
                    const SizedBox(
                      height: 40,
                    ),
                    Obx(
                      () {
                        return Text(
                          controller.carouselTitle.value,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FutureBuilder(
                future: controller.fetchMovies(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      controller.searchText.value == '') {
                    return const HomeCarousel();
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done &&
                      controller.searchText.value != '') {
                    return const SearchMovieListView();
                  }
                  return Container();
                },
              ),
              Expanded(
                child: Container(),
              ),
              const CustomBottonNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
