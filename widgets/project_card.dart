import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/projects_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});
  final ProjectsUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project image
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whiteprimary,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtile,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whitesecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          // Container(
          //   color: CustomColor.bgLIght1,
          //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          //   child: Row(
          //     children: [
          //       const Text(
          //         "Available on:",
          //         style: TextStyle(
          //           color: CustomColor.yellowSecondary,
          //           fontSize: 10,
          //         ),
          //       ),
          //       const Spacer(),
          //       if (project.iosLink != null)
          //         InkWell(
          //           onTap: () {
          //             js.context.callMethod("open", [project.iosLink]);
          //           },
          //           child: Image.asset(
          //             "assets/Android logo.jpg",
          //             width: 19,
          //           ),
          //         ),
          //       if (project.androidLink != null)
          //         Padding(
          //           padding: const EdgeInsets.only(left: 6),
          //           child: InkWell(
          //             onTap: () {
          //               js.context.callMethod("open", [project.androidLink]);
          //             },
          //             child: Image.asset(
          //               "assets/ios.jpg",
          //               width: 17,
          //             ),
          //           ),
          //         ),
          //       if (project.webLink != null)
          //         Padding(
          //           padding: const EdgeInsets.only(left: 6),
          //           child: InkWell(
          //             onTap: () {
          //               js.context.callMethod("open", [project.webLink]);
          //             },
          //             child: Image.asset(
          //               "assets/web.jpg",
          //               width: 17,
          //             ),
          //           ),
          //         ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
