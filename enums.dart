//to define the constants we use the enums
//to avoid other values to be initialized can be prevented
// import 'dart:ffi';

enum Category { high, medium, low }

enum Role { user, admin }

class Person {
  String name;
  Category category;
  Role role;
  Person(this.name, this.category, this.role);

  void show() {
    print("Name : " + name + "\n" + "Category : " + category.name);
  }
}

void main() {
  Person p = Person("BB", Category.high, Role.admin);

  switch (p.role) {
    case Role.admin:
      print("Role : Admin");
      break;
    case Role.user:
      print("Role : User");
      break;
    default:
      print("None");
      break;
  }

  p.show();
}
