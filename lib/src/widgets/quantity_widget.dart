import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          _QuantityButton(
            backgroundButton: Colors.grey,
            iconButton: Icons.remove,
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '1kg',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          _QuantityButton(
            backgroundButton: CustomColors.customSwatchColor,
            iconButton: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final Color backgroundButton;
  final IconData iconButton;
  final VoidCallback? onPressed;

  const _QuantityButton(
      {required this.backgroundButton,
      required this.iconButton,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        child: Ink(
          height: 25,
          width: 25,
          decoration:
              BoxDecoration(color: backgroundButton, shape: BoxShape.circle),
          child: Icon(
            iconButton,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
