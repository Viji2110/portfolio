import 'package:flutter/material.dart';
import '../introduction/media.dart';
import '../utils/responsive_screen_size.dart';
import 'about_intro_body.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.02,
            ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: AboutIntroBody(),
          ),
        ],
      ),
    );
  }
}
