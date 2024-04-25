import 'package:expense_tracker_app/bloc/add_expense_cubit.dart';
import 'package:expense_tracker_app/bloc/expense_bloc.dart';
import 'package:expense_tracker_app/expenses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ExpenseBloc()),
        BlocProvider(create: (context) => AddExpenseCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData().copyWith(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: const ExpensesScreen(),
      ),
    );
  }
}
