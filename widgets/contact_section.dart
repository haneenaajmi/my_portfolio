import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/custom_textfield.dart';

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
                    Text(
                      "Get in touch",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: CustomColor.whiteprimary),
                    ),
                    const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: Row(
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
                              hintText: "Email",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    // message
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: CustomTextfield(
                        hintText: "Your message",
                        maxLines: 20,
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
                          child: Text("Get in Touch"),
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
                          onTap: () {},
                          child: Image.asset(
                            "assets/github.png",
                            width: 28,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/linkedin-logo.png",
                            width: 28,
                          ),
                        ),
                        // InkWell(
                        //   onTap: () {},
                        //   child: Image.asset(
                        //     "assets/facebook.png",
                        //     width: 28,
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {},
                        //   child: Image.asset(
                        //     "assets/instagram.png",
                        //     width: 28,
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {},
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
}