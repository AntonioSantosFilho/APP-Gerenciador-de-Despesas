import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(this.transactions, {super.key});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...transactions.map((tr) {
          return Card(
            child: Row(children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
                padding: const EdgeInsets.all(10),
                child: Text('R\$${tr.value.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple)),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  tr.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  DateFormat('d-MM-y').format(tr.date),
                  style: const TextStyle(color: Colors.grey),
                )
              ])
            ]),
          );
        }).toList()
      ],
    );
  }
}
