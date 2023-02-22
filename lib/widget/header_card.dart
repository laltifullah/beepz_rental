import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
      color: redColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/menue.png"),
              const SizedBox(
                width: 20,
              ),
              const ReusableText(
                title: "Hi, Peterson",
                size: 16,
                weight: FontWeight.w700,
                color: whiteColor,
              ),
              const Spacer(),
              const CircleAvatar(
                backgroundImage:
                AssetImage("assets/images/Ellipse 1.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
