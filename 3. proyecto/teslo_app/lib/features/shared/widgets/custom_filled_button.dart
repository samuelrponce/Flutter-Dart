import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Icon icon;
  final Color? buttonColor;

  const CustomFilledButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.buttonColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    double radius = 10;

    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon.icon,
            color: const Color(0xFF79D6E5),
            size: 45,
          ),
          const SizedBox(
            width: 20,
          ),
          const VerticalDivider(
            color: Color(0xFFd5d6d5),
            thickness: 2,
            indent: 8, // Espacio vertical entre el icono y el texto
            endIndent: 8, // Espacio vertical entre el icono y el texto
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Color(0xFF9f9fa2),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Icon icon;

  const CustomButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 85,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFfefafa),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: CustomFilledButton(
          icon: icon,
          text: text,
          buttonColor: const Color(0xFFfefafa),
          onPressed: () {},
        ),
      ),
    );
  }
}
