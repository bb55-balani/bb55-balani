void main() {
  //non nullable variable
  int age = 18;
  print(age);

  //nullable variable
  int?
      num; //by deafult it conatins null and after declaring we can later initialize it
  print(num);

  num = 20;
  print(num);

//-----------------
//not possible
  // String name;
  // print(name);

//right way
  String? name;
  print(name);
//-----------------

  //used to handle the future conditions
  //but always try to initialize the variable
}
