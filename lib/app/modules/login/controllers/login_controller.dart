import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  static LoginController get instance=> Get.find();
  final email= TextEditingController();
  final password= TextEditingController();

  void logedinUser(String email, String Password, context){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, Password,context);
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
