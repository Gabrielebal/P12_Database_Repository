//aufgabe 2
abstract class DatabaseRepository {
  void sendTransaction(Transaction transaction);
  List<Transaction> getTransactions();

  void updateSettings(AccountSetting setting);
  void hideTransaction(String transactionId);
}

class Transaction {
  final String id;
  final double amount;
  final String description;
  bool hidden;

  Transaction(this.id, this.amount, this.description, this.hidden);
}

class AccountSetting {
  final double limit;
  final bool childAccess;

  AccountSetting(this.limit, this.childAccess);
}

//aufgabe 3
//method from the abstarct class
class MockDatabaseRepository implements DatabaseRepository {
  List<Transaction> transactions = [];
  AccountSetting? settings;

  @override
  void sendTransaction(Transaction transaction) {
    transactions.add(transaction);
  }

  @override
  List<Transaction> getTransactions() {
    return transactions;
  }

  @override
  void updateSettings(AccountSetting setting) {
    settings = setting;
  }

  //hide
  void hideTransaction(String transactionId) {
    for (var t in transactions) {
      if (t.id == transactionId) {
        t.hidden = true;
      }
    }
  }
}
