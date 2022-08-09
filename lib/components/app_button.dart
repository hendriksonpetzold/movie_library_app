import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_streaming_app/style/app_colors.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final String label;
  final Rx<bool> isSelected;
  final EdgeInsets margin;
  const AppButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.height = 55,
    this.width = 140,
    this.margin = const EdgeInsets.only(right: 16),
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSelected.value
              ? AppColors.accentColor
              : AppColors.primaryColorLight,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
