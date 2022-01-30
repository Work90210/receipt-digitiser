// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_saver/UI/home/home_page.dart';
import 'package:receipt_saver/UI/sign%20in/cubit/signin_page_cubit.dart';

class SignInPage extends StatefulWidget {
  static const routeName = "SigninPage";

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninPageCubit, SigninPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text("Sign In/Register"),
              SizedBox(height: 10),
              Text("Email"),
              TextFormField(
                onChanged: (val) => {
                  BlocProvider.of<SigninPageCubit>(context).onEmailChange(val),
                  state.isSignedIn
                      ? Navigator.of(context).pushNamed(
                          HomePage.routeName,
                        )
                      : null,
                },
              ),
              SizedBox(height: 10),
              Text("Password"),

              TextFormField(
                onChanged: (val) => {
                  BlocProvider.of<SigninPageCubit>(context)
                      .onPasswordChange(val),
                  state.isSignedIn
                      ? Navigator.of(context).pushNamed(
                          HomePage.routeName,
                        )
                      : null,
                },
              ),
              SizedBox(height: 10),

              // TODO: Make individual pages for sign in and register
              Center(
                child: Row(
                  children: [
                    // Sign In Button
                    ElevatedButton(
                      onPressed: () async {
                        BlocProvider.of<SigninPageCubit>(context)
                            .onSignInButtonTapped();
                      },
                      child: Center(
                        child: Text("Sign In"),
                      ),
                    ),
                    // Register Button
                    ElevatedButton(
                      onPressed: () async {
                        BlocProvider.of<SigninPageCubit>(context)
                            .onRegisterButtonTapped();
                      },
                      child: Center(
                        child: Text("Register"),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
