// Problem 1

class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void display(double discountPercent) {
    print("Book Title: $title");
    print("Author: $author");
    print("Original Price: \$$price");
    print(
      "Discounted Price: \$$discountPercent%: \$${discountedPrice(discountPercent)}",
    );
    print("--------------------------------------------");
  }
}

//Problem 2

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(super.name, super.salary, this.department);

  void display() {
    print("Manager Name: $name");
    print("Salary: \$$salary");
    print("Department: $department");
    print("--------------------------------------------");
  }
}

class Developer extends Employee {
  String programingLanguage;

  Developer(super.name, super.salary, this.programingLanguage);

  void display() {
    print("Developer Name: $name");
    print("Salary: \$$salary");
    print("Programming Language: $programingLanguage");
    print("--------------------------------------------");
  }
}

//Problem 3

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan is now turned off.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

//Main Function
void main() {
  print("Problem 1: Book Class");
  Book book1 = Book("Dart Basics", "John Doe", 29.99);
  Book book2 = Book("Flutter Development", "Jane Smith", 39.99);

  book1.display(10); // Display with 10% discount
  book2.display(15); // Display with 15% discount

  print("Problem 2: Employee Inheritance");
  Manager manager = Manager("Alice Johnson", 75000, "Sales");
  Developer developer = Developer("Bob Williams", 65000, "Dart");

  manager.display();
  developer.display();

  print("Problem 3: Appliance Interface");
  Fan fan = Fan();
  Light light = Light();

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}
