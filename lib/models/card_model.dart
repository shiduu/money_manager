class CardModel {
  String user;
  String? cardNumber;
  String? cardExpired;
  String? cardType;
  int? cardBackground;
  String? cardElementTop;
  String? cardElementBottom;

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementBottom, this.cardElementTop);
}

List<CardModel> cards = cardData
    .map((item) => CardModel(
          item['user'] as String,
          item['cardNumber'] as String,
          item['cardExpired'] as String,
          item['cardType'] as String,
          item['cardBackground'] as int,
          item['cardElementBottom'] as String,
          item['cardElementTop'] as String,
        ))
    .toList();

var cardData = [
  {
    'user': 'Shidu Ali',
    'cardNumber': '**** **** **** 3456',
    'cardExpired': '02-03-2030',
    'cardType': 'assets/images/c1.png',
    'cardBackground': 0xFF1E1E99,
    'cardElementTop': 'assets/svgs/top.svg',
    'cardElementBottom': 'assets/svgs/bottom.svg',
  },
  {
    'user': 'Shidu Ali',
    'cardNumber': '**** **** **** 3456',
    'cardExpired': '02-03-2030',
    'cardType': 'assets/images/c1.png',
    'cardBackground': 0xFFFF70A3,
    'cardElementTop': 'assets/svgs/top.svg',
    'cardElementBottom': 'assets/svgs/bottom.svg',
  },
  
];
