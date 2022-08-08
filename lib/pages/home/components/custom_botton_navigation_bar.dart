import 'package:flutter/material.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.bottonNavigationBarGradient,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.home,
            color: AppColors.accentColor,
            size: 26,
          ),
          Icon(
            Icons.favorite_outline,
            color: AppColors.unSelectedIconColor,
            size: 26,
          ),
          Icon(
            Icons.chat,
            color: AppColors.unSelectedIconColor,
            size: 26,
          ),
          Icon(
            Icons.person,
            color: AppColors.unSelectedIconColor,
            size: 26,
          ),
        ],
      ),
    );
  }
}
