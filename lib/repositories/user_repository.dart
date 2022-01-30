import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return userCollection
        .doc(auth.currentUser?.uid)
        .set({
          'email': auth.currentUser?.email,
          'uid': auth.currentUser?.uid,
        })
        .then(
          (value) => print("User Added"),
        )
        .catchError(
          (error) => print("Failed to add user: $error"),
        );
  }
}
