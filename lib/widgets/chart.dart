import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final _transactions;
  Chart(this._transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                  ),
                ),
                Text(DateFormat.E().format(_transactions[index].date))
              ],
            );
          },
          itemCount: _transactions.length,
        ),
      ),
    );
  }
}
