import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';
import '../models/transaction.dart';

class Transactions extends StatefulWidget {
  const Transactions({ Key? key }) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 13, top: 29, right: 8),
        child: Text(
          'Transaction History',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: kBlackColor,
          ),
        ),
      ),
      ListView.builder(
          itemCount: transactions.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 16, right: 16),
          itemBuilder: (context, index) {
            return Container(
              height: 65,
              margin: EdgeInsets.only(bottom: 13),
              padding:
                  EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 22),
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: kTwentyBlueColor,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(8.0, 8.0),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(transactions[index].img!))),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            transactions[index].title,
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: kBlackColor),
                          ),
                          Text(
                            transactions[index].date!,
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        transactions[index].amount!,
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: kBlueColor),
                      )
                    ],
                  )
                ],
              ),
            );
          })
      ]
    );
  }
}