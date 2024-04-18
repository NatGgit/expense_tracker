import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpenseWidget extends StatefulWidget {
  const AddExpenseWidget({super.key});

  @override
  State<AddExpenseWidget> createState() => _AddExpenseWidgetState();
}

class _AddExpenseWidgetState extends State<AddExpenseWidget> {
  late final TextEditingController titleController;
  late final TextEditingController amountController;
  DateTime? pickedDate;
  ExpenseCategory? selectedCategory;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    amountController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: titleController,
              maxLength: 50,
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: amountController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      label: Text('Amount'),
                      suffix: Text(' zł'),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Text(pickedDate != null
                          ? DateFormat('yyyy-MM-dd').format(pickedDate!)
                          : 'Select Date'),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(DateTime.now().year - 3),
                            lastDate: DateTime(DateTime.now().year + 1),
                          );
                          setState(() {});
                        },
                        icon: const Icon(Icons.calendar_month),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      value: selectedCategory,
                      hint: const Text('Category'),
                      isExpanded: true,
                      items: <DropdownMenuItem<ExpenseCategory>>[
                        ...ExpenseCategory.values.map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(category.name.toUpperCase()),
                          ),
                        ),
                      ],
                      onChanged: (ExpenseCategory? newValue) {
                        setState(() {
                          selectedCategory = newValue;
                        });
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Save Expense'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
