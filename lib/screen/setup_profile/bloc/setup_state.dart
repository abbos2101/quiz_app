part of 'setup_bloc.dart';

@immutable
abstract class SetupState {}

class InitialState extends SetupState {
  final File? imageFile;
  final List<RegionModel>? regionList;
  final int? regionIndex;

  InitialState({this.imageFile, this.regionList, this.regionIndex});
}

class LoadingState extends SetupState {
  final File? imageFile;
  final List<RegionModel>? regionList;
  final int? regionIndex;

  LoadingState({this.imageFile, this.regionList, this.regionIndex});
}
