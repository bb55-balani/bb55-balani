//we cannot initialize the abstract class
//means we cant create the objects
//cannot create the constructor

//abstract class
abstract class parentClass {
  int age = 0;
  void myName();
  void myEmail();
  void MapStruct();
}

//functions has to be override when any class is inherting the parentClass
//which is abstract
class childClass extends parentClass {
  @override
  // TODO: implement age
  int get age => super.age;

  @override
  set age(int _age) {
    // TODO: implement age
    super.age = _age;
  }

  @override
  void myEmail() {
    print("bb");
  }

  @override
  void myName() {
    print("b");
  }

  @override
  void MapStruct() {
    //key-value pair
    Map<String, dynamic> data = {
      'email': 'bb@gmail.com',
      'password': 12345,
    };
    try {
      print("Email : " +
          data['email'] +
          "\nPassword : " +
          data['password'].toString());
    } catch (e) {
      print(e.toString());
    }
  }
}

void main() {
  childClass cs = childClass();
  cs.MapStruct();
}
