import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '1', title: 'books', amount: 100, date: DateTime.now()),
    Transaction(id: '2', title: 'clothes', amount: 200, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(),
      TransactionList(_userTransactions),
    ]);
  }
}
