import 'package:flutter/material.dart';
import 'package:teslo_shop/config/config.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/config/router/app_router.dart';

import 'features/auth/presentation/widgets/widget_background.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      builder: (context, child) {
        return Scaffold(
          body: Stack(
            children: [
              const CircularParticleScreen(),
              child!,
            ],
          ),
        );
      },
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
