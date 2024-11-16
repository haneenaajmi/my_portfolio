import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/projects_utils.dart';
import 'package:my_portfolio/widgets/custom_textfield.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

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
              // if (Constraints.maxWidth >= KMinDesktopWidth)
              //   const HeaderDesktop()
              // else
              //   HeaderMobile(
              //     onLogoTap: () {},
              //     onMenuTap: () {
              //       scaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),
              // if (Constraints.maxWidth >= KMinDesktopWidth)
              //   const MainDesktop()
              // else
              //   const MainMobile(),

              // // Skills
              // Container(
              //   width: screenWidth,
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: CustomColor.bgLIght1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       // title
              //       const Text(
              //         "What I can do",
              //         style: TextStyle(
              //             fontSize: 24,
              //             fontWeight: FontWeight.bold,
              //             color: CustomColor.whiteprimary),
              //       ),
              //       const SizedBox(height: 50),
              //       // platforms and skills
              //       if (Constraints.maxWidth >= KMedDesktopWidth)
              //         const SkillsDesktop()
              //       else
              //         const SkillsMobile(),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 30),

              // // Project
              // const ProjectsSection(),

              // const SizedBox(height: 30),

              // Contact
              

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
