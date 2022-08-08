import 'package:flutter/material.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          Expanded(child: Container()),
          SizedBox(
            height: 25,
            width: 22,
            child: Stack(
              children: [
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                      color: AppColors.redAccent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
