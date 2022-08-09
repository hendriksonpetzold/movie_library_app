import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/components/app_button.dart';
import 'package:movie_streaming_app/enums/movie_list_enum.dart';
import 'package:movie_streaming_app/pages/home/home_controller.dart';

class HomeSelectMovieTypeBar extends GetView<HomeController> {
  const HomeSelectMovieTypeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 40,
        width: 1100,
        child: Obx(
          () {
            return Row(
              children: [
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.all);
                    controller.getListByGenre();
                  },
                  label: 'All',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.all),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.action);
                    controller.getListByGenre();
                  },
                  label: 'Action',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.action),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.adventure);
                    controller.getListByGenre();
                  },
                  label: 'Adventure',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.adventure),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.comedy);
                    controller.getListByGenre();
                  },
                  label: 'Comedy',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.comedy),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.drama);
                    controller.getListByGenre();
                  },
                  label: 'Drama',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.drama),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.horror);
                    controller.getListByGenre();
                  },
                  label: 'Horror',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.horror),
                  height: 40,
                  width: 140,
                ),
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.romance);
                    controller.getListByGenre();
                  },
                  label: 'Romannce',
                  isSelected:
                      controller.checkActiveList(list: MovieListEnum.romance),
                  height: 40,
                  width: 140,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
