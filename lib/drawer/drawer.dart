import 'package:flutter/material.dart';
import 'package:viji_portfolio/drawer/personal_info.dart';
import '../about_page/about_me_page.dart';
import '../utils/constants.dart';
import 'knowledge.dart';
import 'my_skills.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PersonalInfo(),
                    MySKills(),
                    Knowledge(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
