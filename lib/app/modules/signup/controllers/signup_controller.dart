import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/Models/user_model.dart';
import 'package:task_manager/app/modules/otp/views/otp_view.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';
import 'package:task_manager/repository/user_repository/user_repository.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  static SignupController get instance=> Get.find();

  final fullname= TextEditingController();
  final email= TextEditingController();
  final password= TextEditingController();
  final PhoneNo= TextEditingController();

  final userRepo = Get.put(UserRepository());

  //signup with email & pass func
  void regiestredUser(String fullname, String email, String Password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, Password);
  }



  //Get phone number from the user and pass it to the Auth Repository for Firebase  Authentication
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(()=> const OtpView());
  }

  //phone authentication func
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
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
