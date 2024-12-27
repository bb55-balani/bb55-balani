class Person {
  //encapsulation is used for hiding the data
  //the variable declared with _ are considered as private variables like: _id

  String _name = "";
  List<int> _ages = [];

  //getter and setter methods to access or get the variables
  //if object is created on the same dart file then we can access the private variables so it is good to make the separate files.

  //function to get the values
  String get name => _name;
  List<int> get age => _ages;

  //function to set the values

  set setName(String name) {
    _name = name;
  }

  void setname(String name) {
    _name = name;
  }

  set setAge(List<int> age) {
    _ages = age;
  }
}
