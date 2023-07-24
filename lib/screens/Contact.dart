import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Email - khatkarsidhant@gmail.com",
              style: TextStyle(fontSize: 20),
            ),
            Divider(
              thickness: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    IonIcons.logo_github,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Logo(Logos.linkedin),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Logo(Logos.discord),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Logo(Logos.whatsapp),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    IonIcons.logo_codepen,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Logo(Logos.leetcode),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
