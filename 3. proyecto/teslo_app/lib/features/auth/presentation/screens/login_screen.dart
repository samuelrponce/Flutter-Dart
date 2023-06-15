import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/auth/auth.dart';

import '../../../shared/widgets/custom_filled_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  child: const AppBarView(imageUrl: 'assets/images/logo.png')),
            ),
          ),
        ),
        body: Container(color: Colors.transparent, child: _buttonsView()));
  }
}

// ignore: camel_case_types
class _buttonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 50),
                const CustomButton(
                    text: "Consulta de Tasa Vehicular",
                    icon: Icon(Icons.car_crash)),
                const SizedBox(height: 30),
                const CustomButton(
                    text: "Plan de Pago Tasa Vehicular",
                    icon: Icon(Icons.home)),
                const SizedBox(height: 30),
                const CustomButton(
                    text: "Cita en Linea", icon: Icon(Icons.home)),
                const SizedBox(height: 30),
                const CustomButton(
                    text: "Boleta de Revision Digital", icon: Icon(Icons.home)),
                const SizedBox(height: 30),
                const CustomButton(text: "hola", icon: Icon(Icons.home)),
                const SizedBox(height: 30),
                const CustomButton(text: "hola", icon: Icon(Icons.home)),
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¿No tienes cuenta?'),
                    TextButton(
                        onPressed: () => context.push('/register'),
                        child: const Text('Crea una aquí'))
                  ],
                ),
                const Spacer(flex: 1),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
