part of 'forgot_bloc.dart';

@immutable
abstract class ForgotState {}

class InitialState extends ForgotState {}

class VerifyState extends ForgotState {
  final String email;

  VerifyState({required this.email});
}

class VerifyCodeState extends ForgotState {}
