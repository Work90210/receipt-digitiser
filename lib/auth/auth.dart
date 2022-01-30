// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:receipt_saver/model/user_model/user.dart';
import 'package:receipt_saver/repositories/user_repository.dart';

class AuthService {
  final UserRepository user = UserRepository();
  FirebaseAuth auth = FirebaseAuth.instance;

  UserModel? _userFromFirebase(User userResponse) {
    user.addUser();
    return UserModel(
      uid: userResponse.uid,
      email: userResponse.email,
      name: userResponse.displayName,
    );
  }

  Future RegisterWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final registerResponse = result.user;
      return _userFromFirebase(registerResponse!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future SignInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final signInResponse = result.user;
      return _userFromFirebase(signInResponse!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
