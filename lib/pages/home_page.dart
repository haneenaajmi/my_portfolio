import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, Constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: Constraints.maxWidth >= KMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Main
              if (Constraints.maxWidth >= KMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (Constraints.maxWidth >= KMinDesktopWidth)
                const MainDesktop()
              else
                const  MainMobile(),

              // Skills
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              // Project
              Container(
                height: 500,
                width: double.infinity,
              ),
              // Contact
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              // Footer
              Container(
                height: 500,
                width: double.infinity,
              ),
            ],
          ),
        );
      },
    );
  }
}
