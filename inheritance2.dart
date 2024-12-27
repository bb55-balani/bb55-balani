class Fruit {
  String _name = "";
  String _price = "";

  Fruit(this._name, this._price);

  void _fInfo() {
    print("Name : " + _name.toString());
    print("Price : " + _price.toString());
  }

  void sendInfo() {
    _fInfo();
  }
}
