part of 'forgot_bloc.dart';

@immutable
abstract class ForgotEvent {}

class ConfirmEvent extends ForgotEvent {
  final String email;

  ConfirmEvent({required this.email});
}

class VerifyEvent extends ForgotEvent {}

class VerifyCodeEvent extends ForgotEvent {}
