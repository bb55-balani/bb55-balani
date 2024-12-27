class Vehicle {
  String name = "";
  String noOfWheels = "";
  String year = "";

  Vehicle(this.name, this.noOfWheels, this.year);

  void getInfo() {
    print("Name         : " + name.toString());
    print("No of wheels : " + noOfWheels.toString());
    print("Year         : " + year.toString());
  }
}

//extends keyword is used for inheritance
class Car extends Vehicle {
  String price = "";

  //using super keyword to access the parent class constructor
  Car(String name, String noOfWheels, String year, this.price)
      : super(name, noOfWheels, year);

  // Car(this.price); -- this give error we have to initialize the parent constructor

  void getCInfo() {
    // to use the parent class method use super keyword like overriding
    super.getInfo();
    print("Price of Car : " + price.toString());
  }
}

void main() {
  Car c = Car("i10", "4", "2010", "500000");
  print("===================");
  c.getCInfo();
  print("===================");
}
