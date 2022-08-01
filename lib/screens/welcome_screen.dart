import 'package:flutter/material.dart';
import 'package:travel_app_bloc/wigdets/app_large_text.dart';
import 'package:travel_app_bloc/wigdets/app_text.dart';
import 'package:travel_app_bloc/wigdets/responsive_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/welcome_screen_${index + 1}.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "Trips",
                        color: Colors.white,
                      ),
                      AppText(
                        text: "Mountain",
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: AppText(
                          size: 14,
                          color: Colors.white,
                          text:
                              "Mountain in hikes give you an incredible sense of freedom along with endurance tests",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ResponsiveButton(
                        width: 100,
                        isReponsive: false,
                      ),
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == indexDots ? Colors.red : Colors.white,
                      ),
                    );
                  }))
                ],
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
