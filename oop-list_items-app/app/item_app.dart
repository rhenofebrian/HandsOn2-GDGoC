import 'dart:io';
import '../models/concrete_item_list.dart';
import '../models/concrete_item.dart';

class ListApp {
  final itemList = ConcreteShoppingList();

  void run() {
    while (true) {
      print('--------- My List ---------');
      print('1. Add Item');
      print('2. View Item List');
      print('3. View Item Prices');
      print('4. Delete Item');
      print('5. Exit');

      try {
        stdout.write('Choose an option: ');
        int choice = int.parse(stdin.readLineSync()!);

        switch (choice) {
          case 1:
            _addItem();
            break;
          case 2:
            itemList.printList();
            break;
          case 3:
            itemList.printItemPrices();
            break;
          case 4:
            _deleteItem();
            break;
          case 5:
            print('Exiting program...');
            return;
          default:
            print('Invalid choice. Try again.');
        }
      } catch (e) {
        print('Error: Invalid input, please try again.');
      }
    }
  }

  void _addItem() {
    stdout.write("Item name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter price: ");
    double price;
    try {
      price = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Invalid price format. Please enter a valid number.");
      return;
    }

    itemList.addItem(ConcreteItem(name, price));
  }

  void _deleteItem() {
    stdout.write("Enter item name to delete: ");
    String name = stdin.readLineSync()!;
    itemList.deleteItem(name);
  }
}
