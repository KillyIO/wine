// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmailAddress<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required String failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidConfirmPassword<T> invalidConfirmPassword<T>(
      {@required String failedValue}) {
    return InvalidConfirmPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required String failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  EmptyInput<T> emptyInput<T>({@required String failedValue}) {
    return EmptyInput<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortInput<T> shortInput<T>({@required String failedValue}) {
    return ShortInput<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  LongInput<T> longInput<T>({@required String failedValue}) {
    return LongInput<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  EmptySelection<T> emptySelection<T>({@required String failedValue}) {
    return EmptySelection<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({@required String failedValue}) =
      _$InvalidPassword<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidConfirmPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidConfirmPasswordCopyWith(InvalidConfirmPassword<T> value,
          $Res Function(InvalidConfirmPassword<T>) then) =
      _$InvalidConfirmPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidConfirmPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidConfirmPasswordCopyWith<T, $Res> {
  _$InvalidConfirmPasswordCopyWithImpl(InvalidConfirmPassword<T> _value,
      $Res Function(InvalidConfirmPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidConfirmPassword<T>));

  @override
  InvalidConfirmPassword<T> get _value =>
      super._value as InvalidConfirmPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidConfirmPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidConfirmPassword<T> implements InvalidConfirmPassword<T> {
  const _$InvalidConfirmPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidConfirmPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidConfirmPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith =>
      _$InvalidConfirmPasswordCopyWithImpl<T, InvalidConfirmPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidConfirmPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidConfirmPassword != null) {
      return invalidConfirmPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidConfirmPassword != null) {
      return invalidConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidConfirmPassword<T> implements ValueFailure<T> {
  const factory InvalidConfirmPassword({@required String failedValue}) =
      _$InvalidConfirmPassword<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required String failedValue}) =
      _$InvalidUsername<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyInputCopyWith(
          EmptyInput<T> value, $Res Function(EmptyInput<T>) then) =
      _$EmptyInputCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$EmptyInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyInputCopyWith<T, $Res> {
  _$EmptyInputCopyWithImpl(
      EmptyInput<T> _value, $Res Function(EmptyInput<T>) _then)
      : super(_value, (v) => _then(v as EmptyInput<T>));

  @override
  EmptyInput<T> get _value => super._value as EmptyInput<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptyInput<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$EmptyInput<T> implements EmptyInput<T> {
  const _$EmptyInput({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyInput<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith =>
      _$EmptyInputCopyWithImpl<T, EmptyInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptyInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyInput != null) {
      return emptyInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptyInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptyInput != null) {
      return emptyInput(this);
    }
    return orElse();
  }
}

abstract class EmptyInput<T> implements ValueFailure<T> {
  const factory EmptyInput({@required String failedValue}) = _$EmptyInput<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith;
}

/// @nodoc
abstract class $ShortInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortInputCopyWith(
          ShortInput<T> value, $Res Function(ShortInput<T>) then) =
      _$ShortInputCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortInputCopyWith<T, $Res> {
  _$ShortInputCopyWithImpl(
      ShortInput<T> _value, $Res Function(ShortInput<T>) _then)
      : super(_value, (v) => _then(v as ShortInput<T>));

  @override
  ShortInput<T> get _value => super._value as ShortInput<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortInput<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$ShortInput<T> implements ShortInput<T> {
  const _$ShortInput({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortInput<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortInputCopyWith<T, ShortInput<T>> get copyWith =>
      _$ShortInputCopyWithImpl<T, ShortInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return shortInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortInput != null) {
      return shortInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return shortInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortInput != null) {
      return shortInput(this);
    }
    return orElse();
  }
}

abstract class ShortInput<T> implements ValueFailure<T> {
  const factory ShortInput({@required String failedValue}) = _$ShortInput<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortInputCopyWith<T, ShortInput<T>> get copyWith;
}

/// @nodoc
abstract class $LongInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $LongInputCopyWith(
          LongInput<T> value, $Res Function(LongInput<T>) then) =
      _$LongInputCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$LongInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LongInputCopyWith<T, $Res> {
  _$LongInputCopyWithImpl(
      LongInput<T> _value, $Res Function(LongInput<T>) _then)
      : super(_value, (v) => _then(v as LongInput<T>));

  @override
  LongInput<T> get _value => super._value as LongInput<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(LongInput<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$LongInput<T> implements LongInput<T> {
  const _$LongInput({@required this.failedValue}) : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.longInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LongInput<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $LongInputCopyWith<T, LongInput<T>> get copyWith =>
      _$LongInputCopyWithImpl<T, LongInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return longInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (longInput != null) {
      return longInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return longInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (longInput != null) {
      return longInput(this);
    }
    return orElse();
  }
}

abstract class LongInput<T> implements ValueFailure<T> {
  const factory LongInput({@required String failedValue}) = _$LongInput<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $LongInputCopyWith<T, LongInput<T>> get copyWith;
}

/// @nodoc
abstract class $EmptySelectionCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptySelectionCopyWith(
          EmptySelection<T> value, $Res Function(EmptySelection<T>) then) =
      _$EmptySelectionCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$EmptySelectionCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptySelectionCopyWith<T, $Res> {
  _$EmptySelectionCopyWithImpl(
      EmptySelection<T> _value, $Res Function(EmptySelection<T>) _then)
      : super(_value, (v) => _then(v as EmptySelection<T>));

  @override
  EmptySelection<T> get _value => super._value as EmptySelection<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptySelection<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$EmptySelection<T> implements EmptySelection<T> {
  const _$EmptySelection({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptySelection(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptySelection<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptySelectionCopyWith<T, EmptySelection<T>> get copyWith =>
      _$EmptySelectionCopyWithImpl<T, EmptySelection<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmailAddress(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult invalidConfirmPassword(String failedValue),
    @required TResult invalidUsername(String failedValue),
    @required TResult emptyInput(String failedValue),
    @required TResult shortInput(String failedValue),
    @required TResult longInput(String failedValue),
    @required TResult emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptySelection(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    TResult invalidUsername(String failedValue),
    TResult emptyInput(String failedValue),
    TResult shortInput(String failedValue),
    TResult longInput(String failedValue),
    TResult emptySelection(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptySelection != null) {
      return emptySelection(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult emptyInput(EmptyInput<T> value),
    @required TResult shortInput(ShortInput<T> value),
    @required TResult longInput(LongInput<T> value),
    @required TResult emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(shortInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptySelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult emptyInput(EmptyInput<T> value),
    TResult shortInput(ShortInput<T> value),
    TResult longInput(LongInput<T> value),
    TResult emptySelection(EmptySelection<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emptySelection != null) {
      return emptySelection(this);
    }
    return orElse();
  }
}

abstract class EmptySelection<T> implements ValueFailure<T> {
  const factory EmptySelection({@required String failedValue}) =
      _$EmptySelection<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptySelectionCopyWith<T, EmptySelection<T>> get copyWith;
}
