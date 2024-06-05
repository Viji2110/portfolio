import 'package:flutter/material.dart';
import '../utils/page_controller.dart';
import '../utils/responsive_screen_size.dart';
import 'button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Home'),
              if (!Responsive.isLargeMobile(context))
                NavigationTextButton(
                    onTap: () {
                      controller.animateToPage(2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    text: 'About'),
              NavigationTextButton(
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Contact'),
            ],
          ),
        );
      },
    );
  }
}
