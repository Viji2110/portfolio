import 'package:flutter/material.dart';
import 'package:viji_portfolio/contact/contact_page.dart';
import 'package:viji_portfolio/main/view_page.dart';
import '../about_page/about_intro.dart';
import '../introduction/introduction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainView(pages: [
      Introduction(),
      AboutPage(),
      ContactPage(),
    ]);
  }
}
