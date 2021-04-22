import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'bloc/setup_bloc.dart';
import 'util/region_model.dart';
import 'widget/widget.dart';

class SetupScreen extends StatefulWidget {
  static Widget screen() => BlocProvider(
        create: (context) => SetupBloc(context),
        child: SetupScreen(),
      );

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  late SetupBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<SetupBloc>(context);
    bloc.add(LaunchEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: widgetBody(),
    );
  }

  Widget widgetBody() {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        if (state is LoadingState)
          return Stack(children: [
            widgetBodyContent(
              imageFile: state.imageFile,
              regionIndex: state.regionIndex,
              regionList: state.regionList,
            ),
            WImageTitle(),
            WLoading(visible: true),
          ]);
        if (state is InitialState)
          return Stack(children: [
            widgetBodyContent(
              imageFile: state.imageFile,
              regionIndex: state.regionIndex,
              regionList: state.regionList,
            ),
            WImageTitle(),
          ]);
        throw Exception("$state is not found");
      },
    );
  }

  Widget widgetBodyContent({
    File? imageFile,
    List<RegionModel>? regionList,
    int? regionIndex,
  }) {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Expanded(
          flex: 4,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                WTitle(),
                SizedBox(height: 20),
                WImagePick(
                  imageFile: imageFile,
                  onPressed: () => bloc.add(ImagePickerEvent()),
                ),
                SizedBox(height: 20),
                Text("Region"),
                SizedBox(height: 10),
                WDropDown(
                  index: regionIndex,
                  onChanged: (index) => bloc.add(DropChangeEvent(index: index)),
                  regionList: regionList,
                ),
                Expanded(child: SizedBox()),
                WConfirmButton(
                  onPressed: imageFile == null || regionIndex == null
                      ? null
                      : () => bloc.add(ConfirmEvent()),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
