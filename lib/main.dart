import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(const Expenses());

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transaction = [
    Transaction(
        id: 't1', title: 'Tênis corrida', value: 136.0, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 211.30, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                child: Text('Gráfico'),
              ),
            ),
            Column(
              children: <Widget>[
                ..._transaction.map((tr) {
                  return Row(children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Text(tr.value.toString()),
                    ),
                    Column(children: [Text(tr.title), Text(tr.date.toString())])
                  ]);
                }).toList()
              ],
            )
          ],
        ));
  }
}
