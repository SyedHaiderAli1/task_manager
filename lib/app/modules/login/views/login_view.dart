import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_manager/app/modules/signup/views/signup_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LoginController());
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
                  "Let's Continue the journey.",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.0),
                TextField(
                  controller: controller.email,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white), // White border color
                    ),),
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
                      highlightColor: Colors.blue, // Customize the highlight color
                    ),

                    Icon(Icons.ac_unit),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    LoginController.instance.logedinUser
                      (controller.email.text.trim(), controller.password.text.trim(),context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(44,40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text('Log in'),
                ),
                SizedBox(height: 20.0,),
                TextButton(onPressed: (){},
                    child:Text('Forget Password?', style: TextStyle(color: Colors.white), )),
                SizedBox(height: 20.0),
                Text('Already have an account?',textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),),
                SizedBox(height: 10.0,),


                ElevatedButton(
                  onPressed: (){
                    Get.to(SignupView());
                  },

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
                  child: Text('Sign up'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

