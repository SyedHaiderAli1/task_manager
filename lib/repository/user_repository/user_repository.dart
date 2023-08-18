
 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/Models/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();

  final _db= FirebaseFirestore.instance;

  createUser(UserModel user){
      _db.collection("Users").add(user.toJson()).whenComplete(
              () => Get.snackbar('Success', 'Your account has been Created',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor:Colors.green.withOpacity(0.1),
                  colorText: Colors.green),


      ));
  }



}