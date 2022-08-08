import 'package:flutter/material.dart';
import 'package:movie_streaming_app/components/favorite_button.dart';
import 'package:movie_streaming_app/style/app_images.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String grade;
  final String image;
  const MovieCard({
    Key? key,
    required this.title,
    required this.grade,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w220_and_h330_face$image',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(24),
            child: Align(
              alignment: Alignment.topRight,
              child: FavoriteButton(),
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 60,
            padding: const EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 200,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image(
                    image: AssetImage(AppImages.star),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  grade,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
