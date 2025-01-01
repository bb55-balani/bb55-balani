//interface class or concrete class
class Person {
  int id = 0;
  // Person(int id) {
  //   print("Constructor in interface");
  // }
  void name(String nm) {
    print("Name : $nm}");
  }

  void Age(int age) {
    print("Age : $age}");
  }
}

//implements is used to access the interface class
//if we implement the class Person like this than above class will be automatically become interface class

class Bhavesh implements Person {
  String nm = "";
  // Bhavesh({int id = 0, required this.nm}) : super();
  @override
  void Age(int age) {
    print("Your age is " + age.toString());
  }

  @override
  void name(String nm) {
    print("Your name is " + nm.toString());
  }

  @override
  int id = 0;
}

void main() {
  // Bhavesh b = Bhavesh(id: 8, nm: "bb");
  Bhavesh b = Bhavesh();
  b.Age(5);
  b.name("Balani");
}

//interface using abstract

// abstract class Vehicle {
//   // String name = "";

//   //abstract method
//   void price();

//   //non-abstract method
//   void color({String color = "White"}) {
//     print("Color is : " + color);
//   }
// }

// //if we extends we have to override only the abstract methods
// class Car extends Vehicle {
//   @override
//   void price() {
//     print("Car Price");
//   }
// }

// //if we implements we have to override both methods (abstract,non-abstract)
// class Bike implements Vehicle {
//   @override
//   void color({String color = "White"}) {
//     print("Bike color ${color}");
//   }

//   @override
//   void price() {
//     print("Bike Price");
//   }
// }

// void main() {
//   List<Vehicle> vlist = [Car(), Bike()];
//   for (var i = 0; i < vlist.length; i++) {
//     vlist[i].color();
//     vlist[i].price();
//   }
//   //polymorphism containing different objects of the
//   //parent class - vehicle in this case
// }
