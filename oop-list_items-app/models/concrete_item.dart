import 'item.dart';

class ConcreteItem extends Item {
  ConcreteItem(String name, double price) : super(name, price);

  @override
  void display() {
    print('Item: $name');
  }
}
