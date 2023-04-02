import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../view/Home/Home_Screen.dart';

import 'login.dart';

class authWithGoogle extends GetxController {
  // static authWithGoogle instance = Get.find();
  // late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    //_user = Rx<User?>(auth.currentUser);
    //_user.bindStream(auth.userChanges());
    //ever(_user, (callback) => initialUser);
  }

  //initialUser(User? user) {
  // if (user == null) {
  // print('Login Page');
  // Get.offAll(() => LoginScreen());
  //} else {
  //   Get.offAll(() => HomeScreen());
  // }
  // }

  void register(String email, password) {}

  void SignIn(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(() => HomeScreen());
    } catch (e) {
      Get.snackbar("About user", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Account Login error',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }
}
