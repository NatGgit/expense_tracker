import 'package:expense_tracker_app/widgets/add_expense_widget.dart';
import 'package:expense_tracker_app/widgets/expense_list.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openExpenseModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: [
            Placeholder(),
            ExpenseList(),
          ],
        ),
      ),
    );
  }

  void _openExpenseModal() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => AddExpenseWidget());
  }
}
