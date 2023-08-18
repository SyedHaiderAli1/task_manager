import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../controllers/editprofile_controller.dart';


class EditprofileView extends StatefulWidget {
  const EditprofileView({super.key});

  @override
  State<EditprofileView> createState() => _EditprofileViewState();
}

class _EditprofileViewState extends State<EditprofileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profile',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 20,left: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:50),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector.png'),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.yellow),
                  child: IconButton(
                    icon: Icon(LineAwesomeIcons.camera),
                    onPressed: () {
                      // Implement edit functionality
                    },
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),

            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Full name',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(

              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black), // White border color
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {



                // if (fullnameError.isEmpty && phoneNoError.isEmpty && emailError.isEmpty && passwordError.isEmpty) {
                //   validateFields();
                // }else{
                //   SignupController.instance.regiestredUser(controller.fullname.text.trim(),controller.email.text.trim(), controller.password.text.trim());
                //   Get.to(() => OtpView());
                // }


                // SignupController.instance.regiestredUser
                //   (controller.fullname.text.trim(),controller.email.text.trim(), controller.password.text.trim());
                // SignupController.instance.phoneAuthentication(controller.PhoneNo.text.trim());
                // Get.to(()=>OtpView());
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(190,40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(text: 'joined ',style: TextStyle(fontSize: 14),
                    children: [
                      TextSpan(text: ' 18 AUG 2023.',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                    ],
                  ),

                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Delete'),
                  style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Background color
                ),),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

