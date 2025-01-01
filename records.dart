//records : to group the different or mutiple values

void main() {
  var val = (25, "BB", true);
  print(val.$1); //access the first value and so on

  var valNm = (age: 25, nm: "BB");
  print(valNm.nm); //accessing through name

  (int, int) add_sub(int v1, int v2) {
    return (v1 + v2, v1 - v2);
  }

  var arth = add_sub(10, 50);
  print(arth.$1); // to perform first operation add in this case

  var (add, sub) = arth; //if we have to give names
  print(add); // It will take the v1 + v2
  print(sub); // It will take the v1 - v2

  //--------------------------------------------------------//

  DateTime postCreatedDate = DateTime(2025, 1, 1);
  var (days, hours, minutes) = timeForPostCreation(postCreatedDate);

  print("Days   : " + days.toString());
  print("Hours : " + hours.toString());
  print("Minutes : " + minutes.toString());
}

(int, int, int) timeForPostCreation(DateTime date) {
  DateTime now = DateTime.now();
  int days = now.difference(date).inDays;
  int hours = now.difference(date).inHours;
  int minutes = now.difference(date).inMinutes;

  return (days, hours, minutes);
}
