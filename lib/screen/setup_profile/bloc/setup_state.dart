part of 'setup_bloc.dart';

@immutable
abstract class SetupState {}

class InitialState extends SetupState {}

class SuccessState extends SetupState {
  final File? imageFile;
  final List<String>? regionList;
  final int? regionIndex;

  SuccessState({this.imageFile, this.regionList, this.regionIndex});

  SuccessState copyWith({
    File? imageFile,
    List<String>? regionList,
    int? regionIndex,
  }) {
    return SuccessState(
      imageFile: imageFile ?? this.imageFile,
      regionList: regionList ?? this.regionList,
      regionIndex: regionIndex ?? this.regionIndex,
    );
  }
}

class LoadingState extends SetupState {}
