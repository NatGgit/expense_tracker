import 'package:expense_tracker_app/bloc/expense_bloc.dart';
import 'package:expense_tracker_app/bloc/add_expense_cubit.dart';
import 'package:expense_tracker_app/expenses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ExpenseBloc()),
        BlocProvider(create: (context) => AddExpenseCubit()),
      ],
      child: const MaterialApp(
        home: ExpensesScreen(),
      ),
    );
  }
}
