import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import '../util/region_model.dart';

class WDropDown extends StatelessWidget {
  final List<RegionModel>? regionList;
  final int? index;
  final ValueChanged<int>? onChanged;

  WDropDown({this.regionList, this.index, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
      decoration: BoxDecoration(
        color: MyColors.white,
        boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 2)],
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton<RegionModel>(
        isExpanded: true,
        icon: Icon(
          Icons.arrow_right_alt,
          color: MyColors.primaryColor,
          size: 40,
        ),
        underline: SizedBox(),
        value: index == null || regionList == null ? null : regionList![index!],
        onChanged: (value) {
          if (regionList != null)
            for (int i = 0; i < regionList!.length; i++)
              if (regionList![i] == value) {
                if (onChanged != null) onChanged!(i);
                break;
              }
        },
        items: regionList == null
            ? null
            : regionList!
                .map<DropdownMenuItem<RegionModel>>((RegionModel value) {
                return DropdownMenuItem<RegionModel>(
                  value: value,
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(value.img),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(value.name, style: MyTextStyle.bold),
                        Text(value.code, style: MyTextStyle.regular),
                      ],
                    ),
                  ),
                );
              }).toList(),
      ),
    );
  }
}
