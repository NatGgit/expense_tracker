import 'package:expense_tracker_app/bloc/add_expense_cubit.dart';
import 'package:expense_tracker_app/bloc/expense_bloc.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/utility/validation_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddExpenseWidget extends StatelessWidget {
  AddExpenseWidget({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocBuilder<AddExpenseCubit, AddExpenseState>(
          builder: (context, state) {
            return Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  controller: titleController,
                  maxLength: 50,
                  decoration: const InputDecoration(
                    label: Text('Title'),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ValidationHelper.noEmptyValues,
                  onChanged: (value) {
                    context.read<AddExpenseCubit>().changeTitle(value.trim());
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: amountController,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: const InputDecoration(
                          label: Text('Amount'),
                          suffix: Text(' zł'),
                        ),
                        validator: ValidationHelper.amountValidation,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          context
                              .read<AddExpenseCubit>()
                              .changeAmount(value.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          Text(state.date != null
                              ? DateFormat('yyyy-MM-dd').format(state.date!)
                              : 'Select Date'),
                          const Spacer(),
                          IconButton(
                            onPressed: () async {
                              final pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(DateTime.now().year - 3),
                                lastDate: DateTime(DateTime.now().year + 1),
                              );
                              if (!context.mounted) return;

                              context
                                  .read<AddExpenseCubit>()
                                  .changeDate(pickedDate!);
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
                          value: context.read<AddExpenseCubit>().state.category,
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
                          onChanged: (ExpenseCategory? newCategory) {
                            context
                                .read<AddExpenseCubit>()
                                .changeCategory(newCategory!);
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextButton(
                              onPressed: () {
                                context
                                    .read<AddExpenseCubit>()
                                    .resetFormState();
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                          ),
                          Opacity(
                            opacity: context
                                    .read<AddExpenseCubit>()
                                    .areFieldsFilledIn()
                                ? 1
                                : 0.5,
                            child: IgnorePointer(
                              ignoring: !context
                                  .read<AddExpenseCubit>()
                                  .areFieldsFilledIn(),
                              child: ElevatedButton(
                                onPressed: () {
                                  final newExpense = Expense(
                                      name: state.title!,
                                      amount: state.amount!,
                                      category: state.category!,
                                      date: state.date!);
                                  context.read<ExpenseBloc>().add(
                                      AddExpenseEvent(expense: newExpense));
                                  context
                                      .read<AddExpenseCubit>()
                                      .resetFormState();
                                  Navigator.pop(context);
                                },
                                child: const Text('Save Expense'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
