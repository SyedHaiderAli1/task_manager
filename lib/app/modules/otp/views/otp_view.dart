import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';



class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OtpController());
    var otp;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/verticalsolsblack.png'), // Replace with your image path
            SizedBox(height: 20),
            Text(
              'Enter the OTP',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('We just have sent to your Number',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              borderColor: Colors.black,
              focusedBorderColor: Colors.blue,
              textStyle: TextStyle(fontSize: 18),
              onSubmit: (code){
                otp = code;
                OtpController.instance.VerifyOTP(otp);
              },
              onCodeChanged: (String code) {
                // Add your logic here when OTP is entered
              },
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 280,
              child: ElevatedButton(

                onPressed: () {
                  // Add your logic here for validating the OTP
                  OtpController.instance.VerifyOTP(otp);
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

