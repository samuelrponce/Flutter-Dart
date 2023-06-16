import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  final String imageUrl;

  const AppBarView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFfefafa),
      toolbarHeight: 110,
      title: Center(
          child: Image(
        image: AssetImage(imageUrl),
        height: 60,
      )),
      leading: IconButton(
        padding: const EdgeInsets.only(top: 7.0, bottom: 16.0),
        color: const Color(0xFFb4b7b8),
        iconSize: 40,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
        splashColor: const Color(0xFF535555),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(top: 7.0, bottom: 16.0),
          splashColor: const Color(0xFF535555),
          color: const Color(0xFFb4b7b8),
          iconSize: 40,
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
