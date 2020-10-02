import 'dart:collection';
import 'dart:io';

void main(List<String> args) {
  Map<String, String> addressMap = {
    'satish': 'New Delhi',
    'raman': 'South-West Delhi',
    'parshant': 'East Delhi',
    'shyam': 'West Delhi',
    'rohit': 'Old Delhi',
    'mayank': 'North Delhi'
  };
  Map<int, Map<String, int>> orderMap = {
    123: {
      'motherboard': 25000,
      'ram': 17000,
      'waterCooler': 10000,
      'cpu': 98000,
      'graphic': 150000,
      'smps': 12000,
      'rgb': 5000
    },
    234: {'laptop': 34734, 'tv': 254635, 'smartphone': 98765}
  };
  stdout.write('Enter the Name of Customer to get Address: ');
  var name = stdin.readLineSync().toLowerCase();
  print('Address of $name is: ${addressMap[name]}');
  stdout.write('Enter the order ID to get all items with price: ');
  var orderid = int.parse(stdin.readLineSync());
  print('OrderId: $orderid');
  print('item\t\t\tprice');
  orderMap[orderid].forEach((key, value) {
    print('$key\t\t\t$value');
  });
}
