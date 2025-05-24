//Encapsulation - Class BankAccount

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000);
  print("Current Balance: \$${account.balance}");
  account.withdraw(500);
  print("Current Balance: \$${account.balance}");
}




class BankAccount {
  double _balance = 0;

  // Getter to read balance
  double get balance => _balance;

  // Method to deposit
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Method to withdraw
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid or insufficient funds.");
    }
  }
}
