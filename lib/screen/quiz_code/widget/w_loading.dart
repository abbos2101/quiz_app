import 'package:flutter/material.dart';
import 'package:quiz_app/data/widget/w_loading.dart' as w;
import 'w_found.dart';

class WLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WFound(name: "Name", author: "Author"),
        w.WLoading(visible: true),
      ],
    );
  }
}
