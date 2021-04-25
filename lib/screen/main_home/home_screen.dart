import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/screen/doing_quiz/doing_quiz_screen.dart';
import 'package:quiz_app/screen/public_quiz/public_quiz_screen.dart';
import 'package:quiz_app/screen/quiz_code/quiz_code_screen.dart';
import 'widget/widget.dart';

class HomeScreen extends StatefulWidget {
  static Widget screen() => HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.screen,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              WTitle(name: "Robert!"),
              SizedBox(height: 30),
              WSearch(
                controller: controller,
                onPressedSearch: () async {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizCodeScreen.screen(
                        text: controller.text,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              WListTitle(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PublicQuizScreen.screen()),
                  );
                },
              ),
              // WList(),
            ]..addAll(getList()),
          ),
        ),
      ),
    );
  }

  List<Widget> getList() {
    final List<Widget> list = [];
    for (int i = 0; i < 10; i++)
      list.add(Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(bottom: 20, left: 2, right: 2, top: 2),
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)]),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DoingQuizScreen.screen()),
            );
          },
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: MyColors.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset("assets/img/img_item.png"),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Mathematics XI-2",
                    style: MyTextStyle.bold.copyWith(fontSize: 20),
                  ),
                  Text(
                    "THG89X",
                    style: MyTextStyle.regular.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
    return list;
  }
}
