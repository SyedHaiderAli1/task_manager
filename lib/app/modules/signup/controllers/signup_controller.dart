import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  static SignupController get instance=> Get.find();
  final fullname= TextEditingController();
  final email= TextEditingController();
  final password= TextEditingController();
  final PhoneNo= TextEditingController();

  void regiestredUser(String fullname, String email, String Password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, Password);
  }

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
