import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  print("Enter the Numbers");
  var num = stdin.readLineSync().split(' ');
  var numlist = num.map(int.parse).toList();
  int n = num.length + 1;
  n = (n * (n + 1) / 2).round();
  var sum = numlist.reduce((value, element) => value + element);
  print('Missing number is: ${n - sum}');
}
