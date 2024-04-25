// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseState {
  List<Expense> get expenses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseStateCopyWith<ExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
  @useResult
  $Res call({List<Expense> expenses});
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_value.copyWith(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseStateImplCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateImplCopyWith(
          _$ExpenseStateImpl value, $Res Function(_$ExpenseStateImpl) then) =
      __$$ExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Expense> expenses});
}

/// @nodoc
class __$$ExpenseStateImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateImpl>
    implements _$$ExpenseStateImplCopyWith<$Res> {
  __$$ExpenseStateImplCopyWithImpl(
      _$ExpenseStateImpl _value, $Res Function(_$ExpenseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_$ExpenseStateImpl(
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$ExpenseStateImpl implements _ExpenseState {
  const _$ExpenseStateImpl({required final List<Expense> expenses})
      : _expenses = expenses;

  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'ExpenseState(expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      __$$ExpenseStateImplCopyWithImpl<_$ExpenseStateImpl>(this, _$identity);
}

abstract class _ExpenseState implements ExpenseState {
  const factory _ExpenseState({required final List<Expense> expenses}) =
      _$ExpenseStateImpl;

  @override
  List<Expense> get expenses;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseEvent {
  Expense get expense => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Expense expense) deleteExpense,
    required TResult Function(Expense expense, int index) insertExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Expense expense)? deleteExpense,
    TResult? Function(Expense expense, int index)? insertExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expense expense)? addExpense,
    TResult Function(Expense expense)? deleteExpense,
    TResult Function(Expense expense, int index)? insertExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpenseEvent value) addExpense,
    required TResult Function(DeleteExpenseEvent value) deleteExpense,
    required TResult Function(InsertExpenseEvent value) insertExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpenseEvent value)? addExpense,
    TResult? Function(DeleteExpenseEvent value)? deleteExpense,
    TResult? Function(InsertExpenseEvent value)? insertExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpenseEvent value)? addExpense,
    TResult Function(DeleteExpenseEvent value)? deleteExpense,
    TResult Function(InsertExpenseEvent value)? insertExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseEventCopyWith<ExpenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
  @useResult
  $Res call({Expense expense});
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_value.copyWith(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExpenseEventImplCopyWith<$Res>
    implements $ExpenseEventCopyWith<$Res> {
  factory _$$AddExpenseEventImplCopyWith(_$AddExpenseEventImpl value,
          $Res Function(_$AddExpenseEventImpl) then) =
      __$$AddExpenseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Expense expense});
}

/// @nodoc
class __$$AddExpenseEventImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$AddExpenseEventImpl>
    implements _$$AddExpenseEventImplCopyWith<$Res> {
  __$$AddExpenseEventImplCopyWithImpl(
      _$AddExpenseEventImpl _value, $Res Function(_$AddExpenseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$AddExpenseEventImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
    ));
  }
}

/// @nodoc

class _$AddExpenseEventImpl implements AddExpenseEvent {
  const _$AddExpenseEventImpl({required this.expense});

  @override
  final Expense expense;

  @override
  String toString() {
    return 'ExpenseEvent.addExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseEventImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseEventImplCopyWith<_$AddExpenseEventImpl> get copyWith =>
      __$$AddExpenseEventImplCopyWithImpl<_$AddExpenseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Expense expense) deleteExpense,
    required TResult Function(Expense expense, int index) insertExpense,
  }) {
    return addExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Expense expense)? deleteExpense,
    TResult? Function(Expense expense, int index)? insertExpense,
  }) {
    return addExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expense expense)? addExpense,
    TResult Function(Expense expense)? deleteExpense,
    TResult Function(Expense expense, int index)? insertExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpenseEvent value) addExpense,
    required TResult Function(DeleteExpenseEvent value) deleteExpense,
    required TResult Function(InsertExpenseEvent value) insertExpense,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpenseEvent value)? addExpense,
    TResult? Function(DeleteExpenseEvent value)? deleteExpense,
    TResult? Function(InsertExpenseEvent value)? insertExpense,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpenseEvent value)? addExpense,
    TResult Function(DeleteExpenseEvent value)? deleteExpense,
    TResult Function(InsertExpenseEvent value)? insertExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class AddExpenseEvent implements ExpenseEvent {
  const factory AddExpenseEvent({required final Expense expense}) =
      _$AddExpenseEventImpl;

  @override
  Expense get expense;
  @override
  @JsonKey(ignore: true)
  _$$AddExpenseEventImplCopyWith<_$AddExpenseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExpenseEventImplCopyWith<$Res>
    implements $ExpenseEventCopyWith<$Res> {
  factory _$$DeleteExpenseEventImplCopyWith(_$DeleteExpenseEventImpl value,
          $Res Function(_$DeleteExpenseEventImpl) then) =
      __$$DeleteExpenseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Expense expense});
}

/// @nodoc
class __$$DeleteExpenseEventImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$DeleteExpenseEventImpl>
    implements _$$DeleteExpenseEventImplCopyWith<$Res> {
  __$$DeleteExpenseEventImplCopyWithImpl(_$DeleteExpenseEventImpl _value,
      $Res Function(_$DeleteExpenseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$DeleteExpenseEventImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
    ));
  }
}

/// @nodoc

class _$DeleteExpenseEventImpl implements DeleteExpenseEvent {
  const _$DeleteExpenseEventImpl({required this.expense});

  @override
  final Expense expense;

  @override
  String toString() {
    return 'ExpenseEvent.deleteExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExpenseEventImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExpenseEventImplCopyWith<_$DeleteExpenseEventImpl> get copyWith =>
      __$$DeleteExpenseEventImplCopyWithImpl<_$DeleteExpenseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Expense expense) deleteExpense,
    required TResult Function(Expense expense, int index) insertExpense,
  }) {
    return deleteExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Expense expense)? deleteExpense,
    TResult? Function(Expense expense, int index)? insertExpense,
  }) {
    return deleteExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expense expense)? addExpense,
    TResult Function(Expense expense)? deleteExpense,
    TResult Function(Expense expense, int index)? insertExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpenseEvent value) addExpense,
    required TResult Function(DeleteExpenseEvent value) deleteExpense,
    required TResult Function(InsertExpenseEvent value) insertExpense,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpenseEvent value)? addExpense,
    TResult? Function(DeleteExpenseEvent value)? deleteExpense,
    TResult? Function(InsertExpenseEvent value)? insertExpense,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpenseEvent value)? addExpense,
    TResult Function(DeleteExpenseEvent value)? deleteExpense,
    TResult Function(InsertExpenseEvent value)? insertExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class DeleteExpenseEvent implements ExpenseEvent {
  const factory DeleteExpenseEvent({required final Expense expense}) =
      _$DeleteExpenseEventImpl;

  @override
  Expense get expense;
  @override
  @JsonKey(ignore: true)
  _$$DeleteExpenseEventImplCopyWith<_$DeleteExpenseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertExpenseEventImplCopyWith<$Res>
    implements $ExpenseEventCopyWith<$Res> {
  factory _$$InsertExpenseEventImplCopyWith(_$InsertExpenseEventImpl value,
          $Res Function(_$InsertExpenseEventImpl) then) =
      __$$InsertExpenseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Expense expense, int index});
}

/// @nodoc
class __$$InsertExpenseEventImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$InsertExpenseEventImpl>
    implements _$$InsertExpenseEventImplCopyWith<$Res> {
  __$$InsertExpenseEventImplCopyWithImpl(_$InsertExpenseEventImpl _value,
      $Res Function(_$InsertExpenseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
    Object? index = null,
  }) {
    return _then(_$InsertExpenseEventImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InsertExpenseEventImpl implements InsertExpenseEvent {
  const _$InsertExpenseEventImpl({required this.expense, required this.index});

  @override
  final Expense expense;
  @override
  final int index;

  @override
  String toString() {
    return 'ExpenseEvent.insertExpense(expense: $expense, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertExpenseEventImpl &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertExpenseEventImplCopyWith<_$InsertExpenseEventImpl> get copyWith =>
      __$$InsertExpenseEventImplCopyWithImpl<_$InsertExpenseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Expense expense) deleteExpense,
    required TResult Function(Expense expense, int index) insertExpense,
  }) {
    return insertExpense(expense, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Expense expense)? deleteExpense,
    TResult? Function(Expense expense, int index)? insertExpense,
  }) {
    return insertExpense?.call(expense, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expense expense)? addExpense,
    TResult Function(Expense expense)? deleteExpense,
    TResult Function(Expense expense, int index)? insertExpense,
    required TResult orElse(),
  }) {
    if (insertExpense != null) {
      return insertExpense(expense, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpenseEvent value) addExpense,
    required TResult Function(DeleteExpenseEvent value) deleteExpense,
    required TResult Function(InsertExpenseEvent value) insertExpense,
  }) {
    return insertExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpenseEvent value)? addExpense,
    TResult? Function(DeleteExpenseEvent value)? deleteExpense,
    TResult? Function(InsertExpenseEvent value)? insertExpense,
  }) {
    return insertExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpenseEvent value)? addExpense,
    TResult Function(DeleteExpenseEvent value)? deleteExpense,
    TResult Function(InsertExpenseEvent value)? insertExpense,
    required TResult orElse(),
  }) {
    if (insertExpense != null) {
      return insertExpense(this);
    }
    return orElse();
  }
}

abstract class InsertExpenseEvent implements ExpenseEvent {
  const factory InsertExpenseEvent(
      {required final Expense expense,
      required final int index}) = _$InsertExpenseEventImpl;

  @override
  Expense get expense;
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$InsertExpenseEventImplCopyWith<_$InsertExpenseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
