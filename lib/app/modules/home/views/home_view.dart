import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_manager/app/modules/otp/views/otp_view.dart';
import 'package:task_manager/app/modules/userprofile/views/userprofile_view.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          GestureDetector(
            onTap: () {
              // Open the drawer
             Get.to(UserProfileView());
            },
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector.png',
                ),
              ),
            ),
          ),
        ],
      ),
      body:  Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfileView()),
              );
            }, child: Text('opt screen'),


        )
      ),
    );
  }
}
