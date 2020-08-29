import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final _userTransactionsList;
  TransactionList(this._userTransactionsList);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._userTransactionsList.map((tx) {
          return Card(
            child: Row(children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2)),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  child: Text('\$${tx.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.purple))),
              Column(children: [
                Container(
                    margin: EdgeInsets.all(5),
                    child: Text('${tx.title}',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Container(
                    margin: EdgeInsets.all(5),
                    child: Text(DateFormat().format(tx.date),
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ])
            ]),
          );
        }).toList()
      ],
    );
  }
}
