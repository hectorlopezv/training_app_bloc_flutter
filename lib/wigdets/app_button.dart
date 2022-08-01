import 'package:flutter/material.dart';
import 'package:travel_app_bloc/wigdets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgorundColor;
  final Color borderColor;
  final double size;
  final String? text;
  final bool? isIcon;
  final IconData? icon;
  const AppButtons({
    Key? key,
    required this.color,
    required this.backgorundColor,
    required this.borderColor,
    required this.size,
    this.icon,
    this.text,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgorundColor,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: isIcon == true
          ? Center(child: Icon(icon, color: color))
          : Center(
            child: AppText(
                text: text ?? "",
                color: color,
              ),
          ),
    );
  }
}
