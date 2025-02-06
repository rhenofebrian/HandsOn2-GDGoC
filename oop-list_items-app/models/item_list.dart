import 'item.dart';

abstract class ShoppingList {
  List<Item> items = [];

  void addItem(Item item);
  void deleteItem(String name);
  void printList();
  void printItemPrices();
}
