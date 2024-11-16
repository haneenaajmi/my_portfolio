import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/custom_textfield.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLIght1,
      child: Column(
        children: [
          // title
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whiteprimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, Constraints) {
              if (Constraints.maxWidth >= KMinDesktopWidth) {
                return buildNameEmailFieldDesktop();
              }
              // else
              return buildNameEmailFieldMobile();
            }),
          ),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextfield(
              hintText: "Your message",
              maxLines: 10,
            ),
          ),
          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in Touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          // SNS icons links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("Open", [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('Open', [SnsLinks.linkedin]);
                },
                child: Image.asset(
                  "assets/linkedin _icon.jpg",
                  width: 28,
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     js.context.callMethod("Open", [SnsLinks.facebook]);
              //   },
              //   child: Image.asset(
              //     "assets/facebook.png",
              //     width: 28,
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     js.context.callMethod("Open", [SnsLinks.instagram]);
              //   },
              //   child: Image.asset(
              //     "assets/instagram.png",
              //     width: 28,
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     js.context.callMethod("Open", [SnsLinks.telegram]);
              //   },
              //   child: Image.asset(
              //     "assets/telegram.png",
              //     width: 28,
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          // name
          child: CustomTextfield(
            hintText: "Your name",
          ),
        ),
        const SizedBox(width: 15),
        //  email
        Flexible(
          child: CustomTextfield(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          // name
          child: CustomTextfield(
            hintText: "Your name",
          ),
        ),
        const SizedBox(height: 15),
        //  email
        Flexible(
          child: CustomTextfield(
            hintText: "Your Email",
          ),
        ),
      ],
    );
  }
}
