import 'package:expense_tracker_app/bloc/expense_bloc.dart';
import 'package:expense_tracker_app/widgets/expense_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.expenses.length,
            itemBuilder: (_, index) => Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.blue.shade200,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onDismissed: (direction) => context.read<ExpenseBloc>().add(
                    DeleteExpenseEvent(expense: state.expenses[index]),
                  ),
              child: ExpenseCard(expense: state.expenses[index]),
            ),
            shrinkWrap: true,
          ),
        );
      },
    );
  }
}
