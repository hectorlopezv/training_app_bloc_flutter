import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isReponsive;
  final double? width;
  const ResponsiveButton({Key? key, this.width, this.isReponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 101, 69, 107),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            color: Colors.white,
            size: 28,
            Icons.arrow_right_alt_rounded,
          ),
        ),
      ),
    );
  }
}
