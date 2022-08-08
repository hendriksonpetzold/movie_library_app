import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/components/app_button.dart';
import 'package:movie_streaming_app/enums/movie_list_enum.dart';
import 'package:movie_streaming_app/pages/home/home_controller.dart';

class SelectMovieTypeBar extends GetView<HomeController> {
  const SelectMovieTypeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 40,
        width: 940,
        child: Obx(
          () {
            return Row(
              children: [
                AppButton(
                  onTap: () {
                    controller.changeList(list: MovieListEnum.action);
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
