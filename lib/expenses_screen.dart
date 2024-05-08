import 'package:expense_tracker_app/widgets/add_expense_widget.dart';
import 'package:expense_tracker_app/widgets/expense_chart.dart';
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
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: constraints.maxHeight > constraints.maxWidth
                ? const Column(
                    children: [
                      ExpenseChart(),
                      ExpenseList(),
                    ],
                  )
                : const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExpenseChart(),
                      ExpenseList(),
                    ],
                  ),
          );
        }),
      ),
    );
  }

  void _openExpenseModal() {
    showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (_) => AddExpenseWidget());
  }
}
