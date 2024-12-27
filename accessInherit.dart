import 'inheritance2.dart';

class Apple extends Fruit {
  int _qty = 0;
  Apple(String name, String price, this._qty) : super(name, price);

  void getAInfo() {
    super.sendInfo();
    print("Quantity : " + _qty.toString());
  }
}

void main() {
  Apple a = Apple("Kashmiri Apple", "500", 10);
  a.getAInfo();
}
