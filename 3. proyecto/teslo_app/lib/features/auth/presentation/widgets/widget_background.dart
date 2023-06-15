import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        key: UniqueKey(),
        child: Center(
          child: CircularParticle(
            awayRadius: 80,
            numberOfParticles: 150,
            speedOfParticles: 0.1,
            height: screenHeight,
            width: screenWidth,
            onTapAnimation: true,
            particleColor:
                const Color.fromARGB(255, 185, 193, 201).withAlpha(50),
            awayAnimationDuration: const Duration(milliseconds: 600),
            maxParticleSize: 4,
            isRandSize: true,
            isRandomColor: true,
            randColorList: [
              const Color.fromARGB(255, 185, 193, 201).withAlpha(100),
            ],
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            hoverColor: Colors.white,
            hoverRadius: 90,
            connectDots: true,
          ),
        ),
      ),
    );
  }
}
