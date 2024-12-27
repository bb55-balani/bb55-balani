import 'encapsulation.dart';

void main() {
  Person p = Person();

  p.setname("Bhavesh");
  p.setName = "Balani";
  print(p.name);

  p.setAge = [15, 16, 17, 18];
  print(p.age);
}
