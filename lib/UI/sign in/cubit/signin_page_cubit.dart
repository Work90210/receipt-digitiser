// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/auth.dart';

part 'signin_page_state.dart';
part 'signin_page_cubit.freezed.dart';

final AuthService _auth = AuthService();
String finalEmail = "";
String finalPassword = "";

class SigninPageCubit extends Cubit<SigninPageState> {
  String email;
  String password;
  SigninPageCubit({required this.email, required this.password})
      : super(SigninPageState.initial(email: '', password: '', isSignedIn: false)) {
    _init();
  }

  _init() {}
  onEmailChange(String email) {
    finalEmail = email;
  }

  onPasswordChange(String password) {
    finalPassword = password;
  }

  onSignInButtonTapped() async {
    await _auth.SignInWithEmailAndPassword(finalEmail, finalPassword).then((value) => {
          if (value == null)
            {
              emit(
                SigninPageState.initial(email: '', password: '', isSignedIn: true),
              ),
            }
        });
  }

  onRegisterButtonTapped() {
    _auth.RegisterWithEmailAndPassword(finalEmail, finalPassword).then((value) => {
          if (value == null)
            {
              emit(
                SigninPageState.initial(email: '', password: '', isSignedIn: true),
              ),
            }
        });
  }
}
