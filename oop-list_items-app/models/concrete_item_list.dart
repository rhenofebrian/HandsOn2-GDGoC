import 'item_list.dart';
import 'item.dart';

class ConcreteShoppingList extends ShoppingList {
  @override
  void addItem(Item item) {
    items.add(item);
    print('${item.name} added to your list!');
  }

  @override
  void deleteItem(String name) {
    Item? foundItem;
    for (var item in items) {
      if (item.name.toLowerCase() == name.toLowerCase()) {
        foundItem = item;
        break;
      }
    }

    if (foundItem != null) {
      items.remove(foundItem);
      print('Item deleted: ${foundItem.name}');
    } else {
      print('Item not found.');
    }
  }

  @override
  void printList() {
    if (items.isEmpty) {
      print('You have no items in your list!');
    } else {
      print('Your item list:');
      for (var item in items) {
        item.display();
      }
    }
  }

  @override
  void printItemPrices() {
    if (items.isEmpty) {
      print('No items to show prices.');
      return;
    }
    print('Here are your item prices:');
    for (var item in items) {
      print('- ${item.name}: Rp ${item.price}');
    }
  }
}
