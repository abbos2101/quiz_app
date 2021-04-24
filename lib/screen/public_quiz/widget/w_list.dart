import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import '../model/quiz_model.dart';

class WList extends StatelessWidget {
  final bool withDate;
  final List<QuizModel> quizList;

  WList({
    this.withDate = true,
    required this.quizList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quizList.length,
      itemBuilder: (context, index) => _Item(
        withDate: withDate,
        title: quizList[index].title,
        code: quizList[index].code,
        date: quizList[index].date,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final bool withDate;
  final String? imgUrl;
  final String title;
  final String code;
  final String date;

  _Item({
    this.withDate = true,
    this.imgUrl,
    required this.title,
    required this.code,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    if (withDate)
      return Container(
        width: double.infinity,
        height: 190,
        margin: EdgeInsets.only(top: 15, bottom: 15, left: 1, right: 1),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: MyColors.grey,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  imgUrl == null
                      ? Container(
                          height: double.infinity,
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset("assets/img/img_item.png"),
                        )
                      : Image.network(imgUrl!),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: MyTextStyle.bold.copyWith(fontSize: 20),
                      ),
                      Text(
                        code,
                        style: MyTextStyle.regular.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 180,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MyColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                date,
                style: MyTextStyle.normal.copyWith(
                  fontSize: 14,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      );
    return Container(
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 1, right: 1),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: MyColors.grey,
            blurRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          imgUrl == null
              ? Container(
                  height: double.infinity,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/img/img_item.png"),
                )
              : Image.network(imgUrl!),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: MyTextStyle.bold.copyWith(fontSize: 20),
              ),
              Text(
                code,
                style: MyTextStyle.regular.copyWith(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
