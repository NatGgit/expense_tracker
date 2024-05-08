import 'package:expense_tracker_app/models/expense.dart';

class DataRepository {
  static final data = [
    Expense(
        name: 'burger',
        amount: 12.4,
        category: ExpenseCategory.food,
        date: DateTime.now()),
    Expense(
      name: 'cinema',
      amount: 100,
      category: ExpenseCategory.leisure,
      date: DateTime(2024, 4, 13),
    )
  ];
}
