import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    required this.borderColor,
    required this.textValue,
  });

  final String buttonName;
  final Color borderColor;
  final VoidCallback onPressed;
  final double textValue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return const Color.fromARGB(
                  255, 12, 82, 205); // Use the component's default.
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return const Color.fromARGB(255, 12, 82, 205);
              }
              return Colors.white; // Use the component's default.
            },
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
              side: const BorderSide(
                  color: Color.fromARGB(255, 12, 82, 205), strokeAlign: 0))),
        ),
        onPressed: onPressed,
        child: Text(buttonName, style: TextStyle(fontSize: textValue.sp)));
  }
}
