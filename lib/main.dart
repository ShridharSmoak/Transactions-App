import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlutterAppState();
  }
}

class FlutterAppState extends State<FlutterApp> {
  final List<Transaction> transactions = [
    Transaction(id: '1', title: 'books', amount: 100, date: DateTime.now()),
    Transaction(id: '2', title: 'clothes', amount: 200, date: DateTime.now()),
  ];
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Card(
            child: Container(
              width: double.infinity,
              color: Colors.blue[200],
              child: Text(
                'chart!',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                ),
              ),
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                ),
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(color: Colors.purple),
                  )),
            ],
          ),
          Column(
            children: [
              ...transactions.map((tx) {
                return Card(
                  child: Row(children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2)),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        child: Text('\$${tx.amount}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple))),
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
          ),
        ]),
      ),
    );
  }
}

//child branch has been breached.
