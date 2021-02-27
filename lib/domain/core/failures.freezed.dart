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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidConfirmPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmailAddress(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult invalidConfirmPassword(String failedValue),
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
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    return invalidConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
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
