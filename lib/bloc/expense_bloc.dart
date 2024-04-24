import 'package:expense_tracker_app/data_repository/data_repository.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_bloc.freezed.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(ExpenseState.initial()) {
    on<AddExpenseEvent>((event, emit) {
      final expenses = List<Expense>.from(state.expenses);
      expenses.add(event.expense);

      emit(ExpenseState(expenses: expenses));
    });
    on<DeleteExpenseEvent>((event, emit) {
      final expenses = List<Expense>.from(state.expenses);
      expenses.remove(event.expense);

      emit(ExpenseState(expenses: expenses));
    });
  }
}

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState({required List<Expense> expenses}) = _ExpenseState;
  factory ExpenseState.initial() => ExpenseState(expenses: DataRepository.data);
}

@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.addExpense({required Expense expense}) =
      AddExpenseEvent;
  const factory ExpenseEvent.deleteExpense({required Expense expense}) =
      DeleteExpenseEvent;
}
