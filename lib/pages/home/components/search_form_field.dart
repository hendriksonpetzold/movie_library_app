import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/pages/home/home_controller.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class SearchFormField extends GetView<HomeController> {
  const SearchFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.accentColorLight,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          const Icon(
            Icons.search,
            size: 20,
            color: AppColors.unSelectedIconColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
              cursorColor: Colors.white,
              controller: controller.searchEditingController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Search by movie name',
                isDense: true,
                border: InputBorder.none,
                hintStyle: TextStyle(color: AppColors.unSelectedIconColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
