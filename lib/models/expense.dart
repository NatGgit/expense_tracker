import 'package:uuid/uuid.dart';

const idGenerator = Uuid();

class Expense {
  final String id;
  final String name;
  final double amount;
  final ExpenseCategory category;
  final DateTime date;

  Expense(
      {required this.name,
      required this.amount,
      required this.category,
      required this.date})
      : id = idGenerator.v4();
}

enum ExpenseCategory { business, travel, food, leisure }
