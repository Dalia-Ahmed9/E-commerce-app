import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class authWithGoogle extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth auth = FirebaseAuth.instance;
  late String password;
  late String email;

  @override
  void onInit() {}
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
  }
  // Auth with google
  //void googleAuth() async {
  //  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //  print(googleUser);
  // }

  // Auth with email and password

  void signInWithEmailAndPassword() async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      print(error.toString());
      Get.snackbar('Error Login Account', error.toString());
    }
  }
}
