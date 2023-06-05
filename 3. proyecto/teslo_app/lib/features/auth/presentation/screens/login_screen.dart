import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xFFfbfcfd),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: SafeArea(
            child: Padding(
                 padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: AppBar(
            title: Text('Mi aplicación'),
            // Resto de las propiedades del AppBar
          ),
        ),
          ),
        ),
        body: _ButtonsHomeView());
  }
}

class _AppBarView extends StatelessWidget {
  const _AppBarView();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFfefafa),
      toolbarHeight: 110,
      title: const Center(
        child: Icon(
          Icons.science_outlined,
          size: 32,
        ),
      ),
      leading: Placeholder(),/* IconButton(
        padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
        color: const Color(0xFFb4b7b8),
        iconSize: 50,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
        splashColor: const Color(0xFF535555),
      ), */
      actions: [
        IconButton(
          padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
          splashColor: const Color(0xFF535555),
          color: const Color(0xFFb4b7b8),
          iconSize: 60,
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ButtonsHomeView extends StatelessWidget {
  const _ButtonsHomeView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: ListView(
        children: [
          const SizedBox(height: 60),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.car_rental_sharp),
                text: 'Est elit anim irure sit ut eiusmod mollit consequat .',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
          const SizedBox(height: 30),
          SizedBox(
              width: double.infinity,
              height: 85,
              child: CustomFilledButton(
                icon: const Icon(Icons.login),
                text: 'Ingresar',
                buttonColor: const Color(0xFFfefafa),
                onPressed: () {},
              )),
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
    );
  }
}