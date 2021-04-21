import 'package:flutter/material.dart';

class WImageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Image.asset("assets/img/img_setup.png"),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
