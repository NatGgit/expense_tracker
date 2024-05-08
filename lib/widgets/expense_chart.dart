import 'package:expense_tracker_app/bloc/expense_bloc.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/chart_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade50, Colors.deepPurple.shade600],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ExpenseCategory.values
                .map((e) => ChartBar(
                      icon: e.icon,
                      barHeight: _calculateFactor(e, state),
                    ))
                .toList(),
          ),
        );
      },
    );
  }

  double _calculateFactor(ExpenseCategory category, ExpenseState state) {
    List<Expense> categoryExpenses = state.expenses
        .where((expense) => expense.category == category)
        .toList();
    double categorySpendings = 0;
    for (final expense in categoryExpenses) {
      categorySpendings += expense.amount;
    }
    return categorySpendings / state.allSpendings;
  }
}
