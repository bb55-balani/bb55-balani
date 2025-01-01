//inheritance is used for single class inherit
//interface is used for multiple class inherit

//mixin is also used for it
//but in mixin we cant create objects and constructor
//used to share the information,methods in different class
//keyowrds - with,on
//mixin class cannot be extended

// <<------Example (1) ------->>

// class Company with Salary, Feed {
//   String salary = "";
//   int rating = 0;

//   Company(this.salary, this.rating);
//   void display() {
//     showSalary(salary);
//     feed(rating);
//   }
// }

// mixin Salary {
//   void showSalary(String s) {
//     print("Salary is : " + s);
//   }
// }
// mixin Feed {
//   void feed(int rate) {
//     print("Feedback/Rating : " + rate.toString());
//   }
// }

// void main() {
//   Company c = Company("25000", 5);
//   c.display();
// }

// <<------Example (2) ------->>
// class Login with ValidationEmail, ValidationPassword {
//   String email = "";
//   String password = "";
//   Login(this.email, this.password);
//   void display() {
//     // validateEmail(email);
//     if (validateEmail(email) != "") {
//       if (validatePassword(password) != "") {
//         print(validateEmail(email));
//         print(validatePassword(password));
//       }
//     }
//   }
// }

// mixin ValidationEmail {
//   String validateEmail(String email) {
//     if (email.isEmpty) {
//       return "Email field cant be empty";
//     }
//     if (email.endsWith("@gmail.com")) {
//       return "Email : " + email;
//     } else {
//       return "Please provide proper email!!";
//     }
//   }
// }

// mixin ValidationPassword {
//   String? validatePassword(String password) {
//     if (password.isEmpty) {
//       return "Password should not be empty!";
//     }
//     if (password.length < 6) {
//       return "Password length must be 6 characters or above!";
//     } else {
//       return "Password : " + password;
//     }
//   }
// }

// void main() {
//   Login l = Login("bbb@gmail.com", "123456");
//   l.display();
// }

// use of "on" keyword
class Animal {
  String sound = "";
}

class Dog extends Animal with Sound {
  void display() {
    hear("Bark!!");
  }
}

// here if we use 'on' keyword on the Animal class
//the class which extends Animal class can use the mixin - Sound in this case

mixin Sound on Animal {
  void hear(String msg) {
    print("Sound : ${msg}");
  }
}

void main() {
  Dog d = Dog();
  d.display();
}
