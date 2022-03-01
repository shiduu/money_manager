import 'package:flutter/cupertino.dart';

class Transaction {
  String title;
  String? date;
  String? img;
  String? amount;

  Transaction(
    this.title,
    this.date,
    this.img,
    this.amount,
  );
}

List<Transaction> transactions = cardData
    .map((item) => Transaction(
          item['title'] as String,
          item['date'] as String,
          item['img'] as String,
          item['amount'] as String,
        ))
    .toList();

var cardData = [
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/user.jpg',
    'amount': 'kSh 203',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/mt.png',
    'amount': 'kSh 300',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/ins.png',
    'amount': 'kSh 2013',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/bw.png',
    'amount': 'kSh 1200',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/user.jpg',
    'amount': 'kSh 203',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/mt.png',
    'amount': 'kSh 300',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/ins.png',
    'amount': 'kSh 2013',
  },
  {
    'title': 'Money Trnsfer',
    'date': '12-09-2019',
    'img': 'assets/images/bw.png',
    'amount': 'kSh 1200',
  },
];
