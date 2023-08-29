import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_manager/Models/user_model.dart';
import 'package:task_manager/app/modules/login/views/login_view.dart';
import 'package:task_manager/app/modules/otp/views/otp_view.dart';

import '../controllers/signup_controller.dart';



class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {

  @override
  Widget build(BuildContext context) {



    final controller=Get.put(SignupController());


    bool isFieldEmpty(String value) {
      return value.trim().isEmpty;
    }

    void performActionIfFieldsNotEmpty() {
      if (isFieldEmpty(controller.fullname.text)) {
        // Show an error message or perform an action for empty fullname field
        Get.snackbar('Error', 'Fullname is required',colorText: Colors.red);
      } else if (isFieldEmpty(controller.PhoneNo.text)) {
        // Show an error message or perform an action for empty PhoneNo field
        Get.snackbar('Error', 'Phone No is required',colorText: Colors.red);
      } else if (isFieldEmpty(controller.email.text)) {
        // Show an error message or perform an action for empty email field
        Get.snackbar('Error', 'Email is required',colorText: Colors.red);
      } else if (isFieldEmpty(controller.password.text)) {
        // Show an error message or perform an action for empty password field
        Get.snackbar('Error', 'Password is required',colorText: Colors.red);
      } else {
        // All fields are not empty, perform your action here
        final user = UserModel(
          email: controller.email.text.trim(),
          fullName: controller.fullname.text.trim(),
          password: controller.password.text.trim(),
          phoneNo: controller.PhoneNo.text.trim(),
        );
        SignupController.instance.createUser(user);
        Get.to(() => OtpView());
      }
    }




    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 180.0),
                const Text(
                   'Welcome!',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold,color: Colors.white,),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                const Text(
                  'Create an account to get started.',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),

                TextField(

                  controller: controller.fullname,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Full name',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                TextField(
                  controller: controller.PhoneNo,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Phone Number With Country Code',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                TextField(
                  controller: controller.email,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                TextField(
                  controller: controller.password,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.2,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/google.png',),
                      color: Colors.white,
                      onPressed: () {
                        // Implement your Facebook login functionality here
                      },),
                    InkWell(
                      onTap: () {
                        // Implement your Facebook login functionality here
                      },
                      child: Image.asset('assets/images/facebook.png'), // Replace with your image path
                      splashColor: Colors.blue, // Customize the splash color
                      highlightColor: Colors.transparent, // Customize the highlight color
                    ),

                    Icon(Icons.ac_unit),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: performActionIfFieldsNotEmpty,

                    //for Email & pass Authentication
                    // SignupController.instance.regiestredUser
                    //   (controller.fullname.text.trim(),controller.email.text.trim(), controller.password.text.trim());

                    //for phone Authentication
                    // SignupController.instance.phoneAuthentication(controller.PhoneNo.text.trim());
                    // Get.to(()=>OtpView());

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(44,40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 20.0),
                Text('Already have an account?',textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),),

                ElevatedButton(
                  onPressed: (){
                    Get.to(LoginView());
                  },


                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(44,40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text('Sign in'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


