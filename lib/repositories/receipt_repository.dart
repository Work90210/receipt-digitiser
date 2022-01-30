import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:receipt_saver/model/user_model/receipt.dart';

class ReceiptRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  final Receipt receipts = new Receipt();
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');
// TODO: Map the response to show in the UI.
  getReceipts() {
    final receiptsCollection =
        userCollection.doc(auth.currentUser?.uid).collection('receipts').get();

    return receiptsCollection;
  }

//  Future <List<Map<dynamic, dynamic>>> getCollection() async{
// List<DocumentSnapshot> templist;
// List<Map<dynamic, dynamic>> list = new List();
// CollectionReference collectionRef = Firestore.instance.collection("path");
// QuerySnapshot collectionSnapshot = await collectionRef.get(); // <--- This method is now get().

// templist = collectionSnapshot.documents; // <--- ERROR

// list = templist.map((DocumentSnapshot docSnapshot){
//   return docSnapshot.data() as Map<Dynamic,Dynamic>; // <--- Typecast this.
// }).toList();

// return list;
}
