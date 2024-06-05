import 'package:flutter/material.dart';
import '../main/side_bar.dart';
import '../utils/constants.dart';
import '../utils/responsive_screen_size.dart';
import 'download_button.dart';
import 'nav_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const DownloadButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
