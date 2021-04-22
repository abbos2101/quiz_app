import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/screen/main/main_screen.dart';
import '../util/my_region.dart';
import '../util/my_image_picker.dart';
import '../util/region_model.dart';

part 'setup_event.dart';

part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  final BuildContext context;

  final MyImagePicker _imagePicker = MyImagePicker();

  SetupBloc(this.context) : super(InitialState());

  File? _imageFile;
  List<RegionModel> _regionList = MyRegion.getRegionList();
  int? _regionIndex;

  @override
  Stream<SetupState> mapEventToState(SetupEvent event) async* {
    if (event is LaunchEvent)
      yield* _setInitialState();
    else if (event is ImagePickerEvent)
      yield* _eventImagePicker(event);
    else if (event is DropChangeEvent)
      yield* _eventDropChange(event);
    else if (event is ConfirmEvent) yield* _eventConfirm(event);
  }

  Stream<SetupState> _eventImagePicker(ImagePickerEvent event) async* {
    _imageFile = await _imagePicker.getImage(context);
    yield* _setInitialState();
  }

  Stream<SetupState> _eventDropChange(DropChangeEvent event) async* {
    _regionIndex = event.index;
    yield* _setInitialState();
  }

  Stream<SetupState> _eventConfirm(ConfirmEvent event) async* {
    yield* _setLoadingState();
    await Future.delayed(Duration(seconds: 3));

    while (Navigator.canPop(context)) Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => MainScreen.screen()),
    );
  }

  Stream<SetupState> _setInitialState() async* {
    yield InitialState(
      imageFile: _imageFile,
      regionList: _regionList,
      regionIndex: _regionIndex,
    );
  }

  Stream<SetupState> _setLoadingState() async* {
    yield LoadingState(
      imageFile: _imageFile,
      regionList: _regionList,
      regionIndex: _regionIndex,
    );
  }
}
