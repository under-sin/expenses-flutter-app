import 'dart:math';

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

import 'transaction_form.dart';
import 'transation_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: 't1',
      title: 'Tênis de corrida',
      value: 310.84,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta de luz',
      value: 82.88,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    // como estamos dentro de um objeto do tipo StatefulWidget, sempre que um
    // componente filho tiver o estado alterado a tela vai re-renderizar
    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transaction),
      ],
    );
  }
}
