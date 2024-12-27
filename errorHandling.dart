class Add {
  int? val1;
  int? val2;

  void getEmpInfo() {
    //! null check operator to use if we have use int? val above

    // int ans = val1! + val2!; //it will give error because it is not initialized

    try {
      //in this way we can handle the error here..
      // int ans = val1! + val2!;

      //if we want to print we have to give the initial value to it
      int ans = (val1 ?? 0) + (val2 ?? 0);
      print("Add : " + ans.toString());
    } catch (e) {
      print(e.toString());
    }
  }

  //alternative
  int v1 = 0;
  int v2 = 0;
  void getInfo() {
    try {
      int ans = v1 + v2;
      print("Ans : " + ans.toString());
    } catch (e) {
      print(e);
    }
  }

  //another
  void get(int value1, int value2) {
    print("Added value : " + (value1 + value2).toString());
  }
}

void main() {
  Add a = Add();

  // if provided this values then it will take these otherwise default 0 which is above provided.
  a.val2 = 5;
  a.getEmpInfo();

  a.v1 = 25;
  a.getInfo();

  a.get(12, 113);
}
