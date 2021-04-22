import 'package:flutter/material.dart';

class WImageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              SizedBox(width: 30),
              Image.asset("assets/img/img_setup.png"),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
