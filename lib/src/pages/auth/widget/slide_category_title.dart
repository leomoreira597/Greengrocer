import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SlideCategoryTitle extends StatelessWidget {
  const SlideCategoryTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: DefaultTextStyle(
        style: const TextStyle(
            fontSize: 25,
            color: Colors.white
        ),
        child: AnimatedTextKit(
          pause: Duration.zero,
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText('Frutas'),
            FadeAnimatedText('Verduras'),
            FadeAnimatedText('Legumes'),
            FadeAnimatedText('Carnes'),
            FadeAnimatedText('Cereais'),
            FadeAnimatedText('Laticineos'),
          ],
        ),
      ),
    );
  }
}
