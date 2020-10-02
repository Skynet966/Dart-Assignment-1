import 'dart:io';

void main(List<String> args) {
  print('Enter the numbers↴');
  var input = stdin.readLineSync().split(' ');
  var arr = input.map(int.parse).toList();
  arr = arr.reversed.toList();
  var max = 0;
  arr.forEach((element) {
    if (element > max) {
      max = element;
      print('$max ');
    }
  });
}
