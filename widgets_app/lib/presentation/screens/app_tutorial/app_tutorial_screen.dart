import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Laborum ullamco consectetur culpa occaecat laborum aute incididunt laborum. Occaecat in eiusmod laborum ullamco culpa culpa minim dolore deserunt. Elit ipsum ex est minim velit nostrud qui ullamco. Et ad id fugiat irure cupidatat deserunt voluptate irure fugiat minim deserunt adipisicing ex et. Do incididunt Lorem anim aliqua aute laborum ipsum cupidatat commodo. In voluptate excepteur ut amet pariatur sunt elit cupidatat. Ut sint aliqua laboris mollit dolor velit.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Non commodo non sit excepteur laborum velit. Nulla consectetur minim eu laborum sunt commodo dolore nostrud laboris minim elit sit reprehenderit. Ut in tempor enim anim proident sint dolor. Elit aute sunt tempor adipisicing excepteur consequat minim veniam duis. Quis reprehenderit mollit mollit aliqua et. Sit elit labore voluptate reprehenderit non sit dolor. Esse cupidatat ullamco sunt occaecat ex fugiat mollit velit eu exercitation esse.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Velit ex cupidatat sit ut ullamco qui ea. Dolor cillum dolore esse incididunt ea dolore labore cillum. Labore eu velit qui velit sunt ad dolor quis. Commodo tempor est minim commodo. Adipisicing nisi aliquip cillum tempor fugiat sit laboris in eiusmod esse et Lorem consectetur ipsum. Consectetur amet mollit ut id ut aute esse dolor minim quis. Pariatur cupidatat laboris veniam non cillum fugiat labore aute.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Salir'))),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Comenzar'),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
