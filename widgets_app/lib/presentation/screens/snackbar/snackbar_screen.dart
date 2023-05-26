import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Estas seguro?'),
              content: const Text(
                  'Sint est aute voluptate sunt do velit. Cillum id magna cupidatat in. Consectetur culpa culpa excepteur consectetur labore laboris minim velit eu pariatur fugiat nostrud esse nisi. Ut aliqua occaecat qui qui adipisicing.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar and dialogues'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    showAboutDialog(context: context, children: [
                      const Text(
                          'Sit do eiusmod elit excepteur esse cupidatat laborum et minim. Proident ipsum ullamco deserunt cillum irure et. Tempor commodo commodo sit eu. Eiusmod irure velit enim Lorem ullamco culpa consequat velit quis sint amet. Fugiat qui aute cupidatat occaecat eiusmod enim nisi velit magna magna.')
                    ]);
                  },
                  child: const Text('Licencias usadas')),
              FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.remove_red_eye_outlined),
          label: Text('Mostrar Snackbar'),
          onPressed: () => showCustomSnackbar(context),
        ));
  }
}
