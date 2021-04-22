import 'package:flutter/material.dart';
import 'w_list_title.dart';
import 'w_list.dart';
import 'w_search.dart';
import 'w_title.dart';

class WBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WTitle(),
          SizedBox(height: 30),
          WSearch(),
          SizedBox(height: 10),
          WListTitle(),
          Expanded(child: WList()),
        ],
      ),
    );
  }
}
