//constructor
void main() {
  // Create object of Mobile
  Mobile mobile = Mobile("iPhone 15", "Black", 4999.99);
  mobile.display();
}



class Mobile {
  String name;
  String color;
  double prize;

  // Constructor
  Mobile(this.name, this.color, this.prize);

  // Method to display values
  void display() {
    print("Name: $name");
    print("Color: $color");
    print("Prize: \$${prize.toStringAsFixed(2)}");
  }
}
