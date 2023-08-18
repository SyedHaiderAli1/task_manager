import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/modules/home/views/home_view.dart';
import 'package:task_manager/app/modules/login/views/login_view.dart';
import 'package:task_manager/app/modules/signup/views/signup_view.dart';
import 'package:task_manager/repository/authentication_repository/exceptions/singup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variable
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LoginView())
        : Get.offAll(() => const HomeView());
  }

  //for phone auth
  void phoneAuthentication(String phoneNo) async {
    try{
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          _auth.signInWithCredential(credential);
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is not valid.');
          } else if (e.code == 'invalid-verification-code') {
            Get.snackbar('Error', 'Invalid verification code entered.');
          } else {
            Get.snackbar('Error', 'Something went wrong. Please try again.');
          }
        },
      );
    }catch (e) {
      Get.snackbar('Error', 'An error occurred: ${e.toString()}');
    }

  }

  //verify otp function
  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: this.verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }








  // for Signup
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => HomeView()) : Get.to(() => SignupView());
    } on FirebaseAuthException catch (e) {
      //firebase exception will be here
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      Fluttertoast.showToast(
        msg: ('Firebase Auth Exception - ${ex.messege}'),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      throw ex;
    } catch (_) {
      //catch code here
      final ex = SignUpWithEmailAndPasswordFailure();
      Fluttertoast.showToast(
        msg: ('Exception - ${ex.messege}'),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      throw ex;
    }
  }

  //for login
  Future<void> loginWithEmailAndPassword(
      String email, String password, context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            )
          : Get.to(() => SignupView());
    } on FirebaseAuthException catch (e) {
      //firebase exception will be here
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      Fluttertoast.showToast(
        msg: ('Firebase Auth Exception - ${ex.messege}'),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      throw ex;
    } catch (_) {
      //catch code here
      final ex = SignUpWithEmailAndPasswordFailure();
      Fluttertoast.showToast(
        msg: ('Exception - ${ex.messege}'),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      throw ex;
    }
  }

  //for Logout
  Future<void> logout() async => await _auth.signOut();
}
