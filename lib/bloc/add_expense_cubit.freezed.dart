// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddExpenseState {
  String? get title => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  ExpenseCategory? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddExpenseStateCopyWith<AddExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseStateCopyWith(
          AddExpenseState value, $Res Function(AddExpenseState) then) =
      _$AddExpenseStateCopyWithImpl<$Res, AddExpenseState>;
  @useResult
  $Res call(
      {String? title,
      double? amount,
      DateTime? date,
      ExpenseCategory? category});
}

/// @nodoc
class _$AddExpenseStateCopyWithImpl<$Res, $Val extends AddExpenseState>
    implements $AddExpenseStateCopyWith<$Res> {
  _$AddExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExpenseStateImplCopyWith<$Res>
    implements $AddExpenseStateCopyWith<$Res> {
  factory _$$AddExpenseStateImplCopyWith(_$AddExpenseStateImpl value,
          $Res Function(_$AddExpenseStateImpl) then) =
      __$$AddExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      double? amount,
      DateTime? date,
      ExpenseCategory? category});
}

/// @nodoc
class __$$AddExpenseStateImplCopyWithImpl<$Res>
    extends _$AddExpenseStateCopyWithImpl<$Res, _$AddExpenseStateImpl>
    implements _$$AddExpenseStateImplCopyWith<$Res> {
  __$$AddExpenseStateImplCopyWithImpl(
      _$AddExpenseStateImpl _value, $Res Function(_$AddExpenseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? category = freezed,
  }) {
    return _then(_$AddExpenseStateImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategory?,
    ));
  }
}

/// @nodoc

class _$AddExpenseStateImpl extends _AddExpenseState {
  const _$AddExpenseStateImpl(
      {this.title, this.amount, this.date, this.category})
      : super._();

  @override
  final String? title;
  @override
  final double? amount;
  @override
  final DateTime? date;
  @override
  final ExpenseCategory? category;

  @override
  String toString() {
    return 'AddExpenseState(title: $title, amount: $amount, date: $date, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, amount, date, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      __$$AddExpenseStateImplCopyWithImpl<_$AddExpenseStateImpl>(
          this, _$identity);
}

abstract class _AddExpenseState extends AddExpenseState {
  const factory _AddExpenseState(
      {final String? title,
      final double? amount,
      final DateTime? date,
      final ExpenseCategory? category}) = _$AddExpenseStateImpl;
  const _AddExpenseState._() : super._();

  @override
  String? get title;
  @override
  double? get amount;
  @override
  DateTime? get date;
  @override
  ExpenseCategory? get category;
  @override
  @JsonKey(ignore: true)
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
