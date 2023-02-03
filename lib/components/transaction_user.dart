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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}
