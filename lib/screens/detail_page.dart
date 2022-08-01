import 'package:flutter/material.dart';
import 'package:travel_app_bloc/wigdets/app_button.dart';
import 'package:travel_app_bloc/wigdets/app_large_text.dart';
import 'package:travel_app_bloc/wigdets/app_text.dart';
import 'package:travel_app_bloc/wigdets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mountain_1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black54,
                        ),
                        AppLargeText(text: "\$250"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 5),
                        AppText(
                          text: "Usa,California",
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color:
                                    index == 4 ? Colors.grey : Colors.yellow);
                          }),
                        ),
                        SizedBox(width: 5),
                        AppText(
                          text: "(4.0)",
                          size: 11,
                          color: Colors.black54,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLargeText(
                      text: "People",
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(text: "number of people in your group"),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: AppButtons(
                              text: (index + 1).toString(),
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgorundColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.1),
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.1),
                              size: 50,
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    AppText(
                      text:
                          "You must go for a travel, Travelling helps get rid of pressure. Go to the mountains to see the nature",
                      color: Colors.black.withOpacity(0.4),
                      size: 13,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    isIcon: true,
                    color: Colors.black,
                    backgorundColor: Colors.white,
                    borderColor: Colors.white,
                    size: 60,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  ResponsiveButton(
                    isReponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
