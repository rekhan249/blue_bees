import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.buttonName,
    required this.onPressed,
    required this.borderColor,
  });
  final Color backGroundColor, textColor;
  final String buttonName;
  final Color borderColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
                side: BorderSide(color: backGroundColor, strokeAlign: 2))),
            backgroundColor: MaterialStatePropertyAll(backGroundColor)),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: TextStyle(color: textColor),
        ));
  }
}
