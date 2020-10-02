import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the First String: ");
  var str1 = stdin.readLineSync().toLowerCase().split('');
  stdout.write("Enter the Second String: ");
  var str2 = stdin.readLineSync().toLowerCase().split('');
  str1.sort();
  str2.sort();
  str1.toString() == str2.toString()
      ? print("True: Strings are Anagram.")
      : print("False: Strings are not Anagram.");
}
