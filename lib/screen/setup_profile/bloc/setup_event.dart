part of 'setup_bloc.dart';

@immutable
abstract class SetupEvent {}

class LaunchEvent extends SetupEvent{}

class ImagePickerEvent extends SetupEvent {}

class DropChangeEvent extends SetupEvent {
  final int? index;

  DropChangeEvent({this.index});
}

class ConfirmEvent extends SetupEvent {}
