class DataModel {
  String operations;
  String? selectedIcon;
  String? unselectedIcon;
  bool? isSelected;
 

  DataModel(this.operations, this.selectedIcon, this.unselectedIcon, this.isSelected,);
}

List<DataModel> data = cardData
    .map((item) => DataModel(
          item['operations'] as String,
          item['selectedIcon'] as String,
          item['unselectedIcon'] as String,
          item['isSelected'] as bool,
        ))
    .toList();

var cardData = [
  {
    'operations': 'Money Trnsfer',
    'selectedIcon': 'assets/svgs/mt.svg',
    'unselectedIcon': 'assets/svgs/mt.svg',
    'isSelected': true,

  },
  {
    'operations': 'Bank withdraw',
    'selectedIcon': 'assets/svgs/bw.svg',
    'unselectedIcon': 'assets/svgs/bw.svg',
    'isSelected': false,
  },
  {
    'operations': 'insight tracking',
    'selectedIcon': 'assets/svgs/ins.svg',
    'unselectedIcon': 'assets/svgs/ins.svg',
    'isSelected': false,
  },
   {
    'operations': 'Money Trnsfer',
    'selectedIcon': 'assets/svgs/mt.svg',
    'unselectedIcon': 'assets/svgs/mt.svg',
    'isSelected': true,
  },
];
