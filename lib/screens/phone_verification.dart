import 'package:blue_bees/screens/home_screen.dart';
import 'package:blue_bees/widgets/cutome_elevated_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerifactionScreen extends StatelessWidget {
  const PhoneVerifactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 5.w, top: 20.h),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'Enter the Verification Code',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'A verification code has been sent to your please write the code to activate your account',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade700),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: PinCodeTextField(
                pinTheme: PinTheme(
                    inactiveColor: Colors.grey,
                    activeColor: Colors.black,
                    selectedColor: Colors.black),
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                onChanged: (value) {
                  // Handle OTP input changes
                  if (kDebugMode) {
                    print(value);
                  }
                },
                onCompleted: (value) {
                  // Handle OTP input completion
                  if (kDebugMode) {
                    print("Completed: $value");
                  }
                },
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: const ButtonStyle(
                        overlayColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {},
                    child: Text(
                      "Resend the verification code",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 14.sp),
                    )),
                Container(
                  decoration: const BoxDecoration(),
                  child: CutomElevatedButton(
                    buttonName: 'Enterence',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    },
                    borderColor: Colors.grey.shade300,
                    textValue: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
