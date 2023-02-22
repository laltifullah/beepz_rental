import 'package:beeps_rental/screens/extend_trip.dart';
import 'package:beeps_rental/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:beeps_rental/widget/header_card.dart';
import 'package:beeps_rental/widget/reusable_button.dart';

import '../constant.dart';
import '../widget/border_button.dart';

class Trip extends StatelessWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const HeaderCard(),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map.png"))),
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                        title: "Additional Comments",
                        weight: FontWeight.w700,
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Write Your Comments here..",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: ReusableButton(
                              onTap: () {},
                              title: "Chat",
                              color: greenColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: BorderButton(
                              onTap: () {},
                              title: "Cancel Trip",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const ExtendTrip();
                              }),
                            );
                          },

                          title: "START TRIP")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
