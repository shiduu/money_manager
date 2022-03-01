import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';
import '../models/data_model.dart';

class Operations extends StatefulWidget {
  const Operations({Key? key}) : super(key: key);

  @override
  _OperationsState createState() => _OperationsState();
}

class _OperationsState extends State<Operations> {
  //current selected
  int current = 0;

   //handle indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, bottom: 13, top: 29, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Operations',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
              Row(
                  children: map<Widget>(data, (index, selected) {
                return Container(
                  alignment: Alignment.centerLeft,
                  height: 9,
                  width: 9,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: current == index ? kBlueColor : kTwentyBlueColor,
                  ),
                );
              }))
            ],
          ),
        ),
        Container(
          height: 123,
          child: ListView.builder(
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OperationCard(
                      operation: data[index].operations,
                      selectedIcon: data[index].selectedIcon!,
                      unSelectedIcon: data[index].unselectedIcon!,
                      isSelected: current == index,
                      context: this,
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedIcon;
  final String unSelectedIcon;
  final bool isSelected;
  _OperationsState context;

  OperationCard(
      {required this.context,
      required this.operation,
      required this.selectedIcon,
      required this.unSelectedIcon,
      required this.isSelected});

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 123,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: kTwentyBlueColor,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(8.0, 8.0))
          ],
          borderRadius: BorderRadius.circular(20),
          color: widget.isSelected ? kGreyColor : kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.isSelected ? widget.selectedIcon : widget.unSelectedIcon,
            width: 60,
            height: 60,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: widget.isSelected ? kWhiteColor : kBlueColor),
          )
        ],
      ),
    );
  }
}
