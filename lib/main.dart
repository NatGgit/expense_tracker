import 'package:expense_tracker_app/bloc/expense_bloc.dart';
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
    return BlocProvider(
      create: (context) => ExpenseBloc(),
      child: const MaterialApp(
        home: ExpensesScreen(),
      ),
    );
  }
}
