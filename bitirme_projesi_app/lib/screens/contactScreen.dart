// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

instagram() {
  final Uri uri = Uri.parse("https://instagram.com/mali.cnr");
  launchUrl(uri);
}

linkedin() {
  final Uri uri =
      Uri.parse("https://www.linkedin.com/in/mehmet-ali-cinar-016968256/");
  launchUrl(uri);
}

github() {
  final Uri uri = Uri.parse("https://github.com/mehmetalicinar34");
  launchUrl(uri);
}

thisproject() {
  final Uri uri =
      Uri.parse("https://github.com/mehmetalicinar34/bitirmeProjesi");
  launchUrl(uri);
}

class _ContactScreenState extends State<ContactScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 280,
            width: 400,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(51, 158, 158, 158)),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ContactRow(
                    label: "My Instagram account",
                    iconPath: "assets/images/instagram.svg",
                    onPressed: instagram,
                  ),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  ContactRow(
                    label: "My Linkedin account",
                    iconPath: "assets/images/linkedin.svg",
                    onPressed: linkedin,
                  ),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  ContactRow(
                    label: "My Github account",
                    iconPath: "assets/images/github.svg",
                    onPressed: github,
                  ),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  ContactRow(
                    label: "This project's github page",
                    iconPath: "assets/images/github.svg",
                    onPressed: thisproject,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback onPressed;

  const ContactRow({
    required this.label,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 25),
        Icon(Icons.arrow_forward, color: Color.fromARGB(148, 158, 158, 158)),
        SizedBox(width: 25),
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              iconPath,
              height: 35,
            ),
          ),
        ),
      ],
    );
  }
}
