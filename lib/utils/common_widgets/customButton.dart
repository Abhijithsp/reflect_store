import 'package:flutter/material.dart';
import 'package:reflect/utils/constants/settings/settings.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Icon icon;
  final double customHeight;
  final double customWidth;
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.icon,
      required this.customHeight,
      required this.customWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
      child: ElevatedButton.icon(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ))),
          label: Text(text, style: Settings().normalText),
          icon: icon,
          onPressed: onTap),
    );
  }
}
