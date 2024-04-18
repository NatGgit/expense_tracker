import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple,
      child: ListTile(
        leading: Text(
          '${expense.amount} zł',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        title: Text(
          expense.name,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          _getFormattedDate(expense.date),
          style: const TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          _getIcon(expense.category),
          color: Colors.white,
        ),
      ),
    );
  }

  IconData _getIcon(ExpenseCategory category) {
    if (category == ExpenseCategory.business) {
      return Icons.work;
    } else if (category == ExpenseCategory.food) {
      return Icons.lunch_dining;
    } else if (category == ExpenseCategory.leisure) {
      return Icons.skateboarding;
    } else if (category == ExpenseCategory.travel) {
      return Icons.travel_explore;
    }
    return Icons.question_mark;
  }

  String _getFormattedDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
