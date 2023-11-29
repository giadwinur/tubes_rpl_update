import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CompNews extends StatelessWidget {
  String link;
  String image;
  CompNews({
    Key? key,
    this.link = '',
    this.image = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () async {
        final Uri url = Uri.parse(link);

        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: SizedBox(
        width: width,
        height: 158,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
