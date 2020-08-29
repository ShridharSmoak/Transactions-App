import 'package:flutter/material.dart';
import './user_transaction.dart';

void main() => runApp(TransactionApp());

class TransactionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
