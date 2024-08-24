import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactSupport extends StatelessWidget {
  const CustomContactSupport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri url = Uri.parse('tel:16957');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Could not launch phone dialer')),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: const Color(0xff9a1b2c),
                borderRadius: BorderRadius.circular(20)),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'خدمة العملاء',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '16957',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.headphones,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
