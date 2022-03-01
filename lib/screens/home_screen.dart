import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_manager/constants/color_constants.dart';
import 'package:money_manager/screens/cards.dart';
import 'package:money_manager/screens/operation.dart';
import 'package:money_manager/screens/transaction.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(color: kBlueColor),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: kBlueColor,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(image: AssetImage('assets/images/user.jpg',),fit: BoxFit.fill,),
              ),
            )
            )
        ]
        ),
        drawer: const Drawer(),
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          children: [
            // Container(
            //   margin: const EdgeInsets.only(left: 16, right: 16),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         SvgPicture.asset(
            //           'assets/svgs/drawer_ico.svg',
            //           width: 30,
            //           height: 30,
            //         ),
            //         Container(
            //           height: 40,
            //           width: 40,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(30),
            //               image: const DecorationImage(
            //                   image: AssetImage('assets/images/user.jpg'))),
            //         )
            //       ]),
            // ),
            //card section
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Evening',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'Abdi Rashid',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),

            //cards
            Cards(),
  
            //operations
            Operations(),

            //transaction history
            Transactions(),
          ],
        ),
      ),
    );
  }
}
