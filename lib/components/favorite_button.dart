import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isFavorite = RxBool(false);

    return InkWell(
      onTap: () {
        isFavorite.value = !isFavorite.value;
      },
      child: Obx(
        () {
          return Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XFF333436),
            ),
            child: isFavorite.value
                ? const Icon(
                    Icons.favorite,
                    color: AppColors.redAccent,
                  )
                : const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
          );
        },
      ),
    );
  }
}
