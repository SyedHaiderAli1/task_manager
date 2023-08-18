import 'dart:ffi';

import 'package:get/get.dart';
import 'package:task_manager/app/modules/home/views/home_view.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

class OtpController extends GetxController {
  //TODO: Implement OtpController
  static OtpController get instance=> Get.find();

  void VerifyOTP(String otp)async{
    var isVerified= await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeView()): Get.back();
  }



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
