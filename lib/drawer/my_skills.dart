import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.deepPurple,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          title: 'Flutter',
          image: 'assets/images/png/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Dart',
            image: 'assets/images/png/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6,
            title: 'Firebase',
            image: 'assets/images/png/firebase.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Responsive Design',
            image: 'assets/images/png/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.89,
            title: 'Clean Architecture',
            image: 'assets/images/png/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.5,
            title: 'Riverpod',
            image: 'assets/images/png/riverpod.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.5,
            title: 'Provider',
            image: 'assets/images/png/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.78,
            title: 'Getx',
            image: 'assets/images/png/dart.png'),
      ],
    );
  }
}
