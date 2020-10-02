import 'dart:io';

void main(List<String> args) {
  String partyType(List<int> partyList) {
    partyList.sort();
    for (int i = 1; i < partyList.length; i++) {
      if (partyList[i - 1] == partyList[i]) {
        return "Boys";
      }
    }
    return "Girls";
  }

  stdout.write("Enter the number of party orgnised: ");
  var n = int.parse(stdin.readLineSync());
  for (int i = 0; i < n; i++) {
    stdout.write("Enter number of people in the party: ");
    var peopel = int.parse(stdin.readLineSync());
    List<int> arr = new List<int>();
    print("Enter the color of robes in terms of positive integers");
    for (int j = 0; j < peopel; j++) {
      arr.add(int.parse(stdin.readLineSync()));
    }
    print(partyType(arr));
  }
}
