import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:receipt_saver/UI/sign%20in/signin_page.dart';
import 'package:receipt_saver/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: SignInPage.routeName,
    );
  }
}
