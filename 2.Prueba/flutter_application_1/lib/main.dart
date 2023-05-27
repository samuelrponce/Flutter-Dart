import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentations/screens/counters/counter_functions_screen.dart';
// import 'package:FLUTTER_APPLICATION_1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFunctionsScreen()
    );
  }
}