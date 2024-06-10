import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/responsive_screen_size.dart';
import 'about_bio.dart';
import 'about_header.dart';
import 'about_image.dart';

class AboutIntroBody extends StatelessWidget {
  const AboutIntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.06,
                ),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.23,
                    ),
                    const AboutMeAnimatedImageContainer(
                      width: 150,
                      height: 200,
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.1,
                ),
              const Responsive(
                  desktop: AboutMePortfolioText(start: 40, end: 50),
                  largeMobile: AboutMePortfolioText(start: 40, end: 35),
                  mobile: AboutMePortfolioText(start: 35, end: 30),
                  tablet: AboutMePortfolioText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AboutMeAnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AboutMeAnimatedDescriptionText(start: 14, end: 12),
                mobile: AboutMeAnimatedDescriptionText(start: 14, end: 12),
                tablet: AboutMeAnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context))
          const AboutMeAnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
