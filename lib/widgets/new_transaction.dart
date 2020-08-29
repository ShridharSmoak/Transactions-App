import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
          ),
          FlatButton(
              onPressed: () {},
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              )),
        ],
      ),
    );
  }
}
