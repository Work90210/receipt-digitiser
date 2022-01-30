part of 'signin_page_cubit.dart';

@freezed
class SigninPageState with _$SigninPageState {
  const factory SigninPageState.initial({
    required String email,
    required String password,
    required bool isSignedIn,
  }) = _Initial;
}
