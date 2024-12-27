class Vehicle {
  //attributes/properties
  String? name; //? to initialize in future
  String? color;
  double? price;
  int? year;
  bool? available;

  //methods/functions
  void getInfo() {
    print("--------------------------------");
    print("Name      : " + name.toString());
    print("Color     : " + color.toString());
    print("Price     : " + price.toString());
    print("Year      : " + year.toString());
    print("Available : " + available.toString());
    print("--------------------------------");
  }

  void updateInfo(double updtPrice) {
    print("Price ${price} updated to : " + updtPrice.toString());
    price = updtPrice;
  }
}

void main() {
  //object creation
  Vehicle v1 = Vehicle();
  v1.name = "i10";
  v1.color = "white";
  v1.price = 500000.00;
  v1.year = 2005;
  v1.available = true;
  v1.getInfo();
  v1.updateInfo(600000);
  print("\n--After update!--\n");
  v1.getInfo();

  // Vehicle v2 = Vehicle();
  // v2.name = "Activa";
  // v2.color = "Black";
  // v2.price = 90000;
  // v2.year = 2016;
  // v2.available = false;
  // v2.getInfo();
}
