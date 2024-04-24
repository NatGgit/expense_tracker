import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_expense_cubit.freezed.dart';

class AddExpenseCubit extends Cubit<AddExpenseState> {
  AddExpenseCubit() : super(AddExpenseState.initial());

  Future<void> changeTitle(String newTitle) async {
    emit(state.copyWith(
      title: newTitle,
    ));
  }

  Future<void> changeAmount(String newAmount) async {
    // if (RegExp('[^0-9.]').hasMatch(newAmount) || newAmount.isEmpty) {
    //   emit(state.copyWith(
    //     amount: null,
    //   ));
    // } else {
    emit(state.copyWith(
      amount: double.tryParse(newAmount),
    ));
    // }
  }

  Future<void> changeDate(DateTime newDate) async {
    emit(state.copyWith(
      date: newDate,
    ));
  }

  Future<void> changeCategory(ExpenseCategory newCategory) async {
    emit(state.copyWith(
      category: newCategory,
    ));
  }

  bool areFieldsFilledIn() {
    return state.title != null &&
        state.title!.isNotEmpty &&
        state.amount != null &&
        state.category != null &&
        state.date != null;
  }

  Future<void> resetFormState() async {
    emit(state.copyWith(
      title: null,
      amount: null,
      category: null,
      date: null,
    ));
  }
}

@freezed
class AddExpenseState with _$AddExpenseState {
  const AddExpenseState._();

  const factory AddExpenseState({
    String? title,
    double? amount,
    DateTime? date,
    ExpenseCategory? category,
  }) = _AddExpenseState;

  factory AddExpenseState.initial() => const AddExpenseState();
}
