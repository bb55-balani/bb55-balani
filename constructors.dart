class Student {
  String name = "";
  int age = 0;
  String email = "";

//constructor (use to initialize value easily)

//---1st-way---

  // Student(String name, int age) {
  //   // name = name; //here it will initialize nothing to our name attribute

  //   //use this to access the attribute variable
  //   this.name = name;
  //   this.age = age;
  // }

//---2nd-way---

  // Student(
  //     this.name, this.age, this.email); //in this we cant initialize the value

  Student(
      {this.name = "BB",
      this.age = 0,
      required this.email}); // in this way we can initialize default values
  // required here it means it is compulsory to pass that value

  void getStuInfo() {
    print("Name  : " + name.toString());
    print("Age   : " + age.toString());
    print("Email : " + email.toString());
  }
}

void main() {
  //constructor is called when object is created

  // Student s1 = Student("Bhavesh", 25,"@gamil.com");

  Student s = Student(email: "bb@gmail.com");
  //the one with required have to be passed here compulsory
  //other values have the default values
  s.getStuInfo();

  //and changed if values are passed
  Student s2 = Student(name: "Vinay", age: 22, email: "vinay@gmail.com");
  s2.getStuInfo();

//List of objects for the Student class
  List<Student> stuList = [
    Student(name: "Vinay", age: 22, email: "vinay@gmail.com"),
    Student(name: "Ajay", age: 21, email: "ajay@gmail.com"),
    Student(name: "Yash", age: 23, email: "yash@gmail.com")
  ];

  //to get list values
  stuList.forEach(
    (element) {
      print(
          "\nName : ${element.name} \nAge : ${element.age} \nEmail : ${element.email}");
    },
  );
}
