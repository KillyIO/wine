// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmailAddress<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({@required String failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidConfirmPassword<T> invalidConfirmPassword<T>(
      {@required String failedValue}) {
    return InvalidConfirmPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUsername<T> invalidUsername<T>({@required String failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

  EmptyInput<T> emptyInput<T>({@required String failedValue}) {
    return EmptyInput<T>(
      failedValue: failedValue,
    );
  }

  LongInput<T> longInput<T>({@required String failedValue}) {
    return LongInput<T>(
      failedValue: failedValue,
    );
  }

  EmptySelection<T> emptySelection<T>({@required String failedValue}) {
    return EmptySelection<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

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

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

abstract class $InvalidConfirmPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidConfirmPasswordCopyWith(InvalidConfirmPassword<T> value,
          $Res Function(InvalidConfirmPassword<T>) then) =
      _$InvalidConfirmPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith =>
      _$InvalidConfirmPasswordCopyWithImpl<T, InvalidConfirmPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidConfirmPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidConfirmPassword != null) {
      return invalidConfirmPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith;
}

abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

abstract class $EmptyInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyInputCopyWith(
          EmptyInput<T> value, $Res Function(EmptyInput<T>) then) =
      _$EmptyInputCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith =>
      _$EmptyInputCopyWithImpl<T, EmptyInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptyInput(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyInput != null) {
      return emptyInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptyInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith;
}

abstract class $LongInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $LongInputCopyWith(
          LongInput<T> value, $Res Function(LongInput<T>) then) =
      _$LongInputCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $LongInputCopyWith<T, LongInput<T>> get copyWith =>
      _$LongInputCopyWithImpl<T, LongInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return longInput(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (longInput != null) {
      return longInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return longInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $LongInputCopyWith<T, LongInput<T>> get copyWith;
}

abstract class $EmptySelectionCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptySelectionCopyWith(
          EmptySelection<T> value, $Res Function(EmptySelection<T>) then) =
      _$EmptySelectionCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

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

  @override
  $EmptySelectionCopyWith<T, EmptySelection<T>> get copyWith =>
      _$EmptySelectionCopyWithImpl<T, EmptySelection<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidConfirmPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result emptyInput(String failedValue),
    @required Result longInput(String failedValue),
    @required Result emptySelection(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptySelection(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidConfirmPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result emptyInput(String failedValue),
    Result longInput(String failedValue),
    Result emptySelection(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptySelection != null) {
      return emptySelection(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result emptyInput(EmptyInput<T> value),
    @required Result longInput(LongInput<T> value),
    @required Result emptySelection(EmptySelection<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUsername != null);
    assert(emptyInput != null);
    assert(longInput != null);
    assert(emptySelection != null);
    return emptySelection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidConfirmPassword(InvalidConfirmPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result emptyInput(EmptyInput<T> value),
    Result longInput(LongInput<T> value),
    Result emptySelection(EmptySelection<T> value),
    @required Result orElse(),
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
  $EmptySelectionCopyWith<T, EmptySelection<T>> get copyWith;
}
