abstract class DatabaseRepository {
  void sendTransaction(Transaction transaction);
  List<Transaction> getTransactions();

  void updateSettings(AccountSetting setting);
  void deleteTransaction(String transactionId);
}

class Transaction {
  final String id;
  final double amount;
  final String description;

  Transaction(this.id, this.amount, this.description);
}

class AccountSetting {
  final double limit;
  final bool childAccess;

  AccountSetting(this.limit, this.childAccess);
}
