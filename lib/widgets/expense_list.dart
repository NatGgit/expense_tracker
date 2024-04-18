import 'package:expense_tracker_app/data_repository/data_repository.dart';
import 'package:expense_tracker_app/widgets/expense_card.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DataRepository.data.length,
      itemBuilder: (_, index) =>
          ExpenseCard(expense: DataRepository.data[index]),
      shrinkWrap: true,
    );
  }
}
