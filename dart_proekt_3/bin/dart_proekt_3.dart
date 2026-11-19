// задание 1
class Student {
  String name;
  int age;
  double averagePoint;

  Student(this.name, this.age, this.averagePoint);

  void printInfo() {
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

void main() {
  Student s1 = Student('Алия', 19, 4.8);
  Student s2 = Student('Тимур', 20, 4.2);
  Student s3 = Student('Мария', 18, 4.5);

  List<Student> students = [s1, s2, s3];

  for (var student in students) {
    student.printInfo();
    print('Отличник: ${student.isExcellent()}\n');
  }
}

// задание 2
class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, {this.balance = 0.0});

  void deposit(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма пополнения должна быть больше нуля.');
      return;
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма снятия должна быть больше нуля.');
      return;
    }
    if (amount > balance) {
      print('Ошибка: недостаточно средств на счёте ($owner).');
      return;
    }
    balance -= amount;
  }

  double getBalance() {
    return balance;
  }

  void printStatement() {
    print('Владелец:$owner, баланс: $balance');
  }
}

void main() {
  BankAccount account1 = BankAccount('Артём');
  BankAccount account2 = BankAccount('Елена', balance: 1500.0);

  account1.deposit(5000.0);
  account1.withdraw(1200.0);
  account1.withdraw(10000.0);

  account2.deposit(2500.0);
  account2.withdraw(800.0);
  account2.deposit(300.0);

  account1.printStatement();
  account2.printStatement();
}

// задание 3
class Product {
  String title;
  double price;
  int quantity;

  Product(this.title, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }

  void restock(int amount) {
    if (amount <= 0) {
      print('Ошибка: количество для пополнения должно быть больше нуля.');
      return;
    }
    quantity += amount;
  }

  void printProduct() {
    print('Товар:$title, цена: $price, кол-во: $quantity');
  }
}

void main() {
  List<Product> products = [
    Product('Ноутбук', 65000.0, 4),
    Product('Мышь беспроводная', 1800.0, 25),
    Product('Монитор', 24000.0, 7),
    Product('Клавиатура механическая', 5500.0, 12),
    Product('Наушники', 4200.0, 18),
  ];

  print('--- Список товаров ---');
  for (var product in products) {
    product.printProduct();
  }

  print('\n--- Пополнение склада ---');
  products[0].restock(3);
  print('После пополнения:');
  products[0].printProduct();

  double totalWarehouseCost = 0.0;
  for (var product in products) {
    totalWarehouseCost += product.getTotalCost();
  }
  print('\nОбщая стоимость всего склада: $totalWarehouseCost');

  Product mostExpensive = products.first;
  for (var product in products) {
    if (product.price > mostExpensive.price) {
      mostExpensive = product;
    }
  }
  print('Товар с максимальной ценой: ${mostExpensive.title}');
}
