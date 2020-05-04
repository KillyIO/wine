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

  InvalidUsername<T> invalidUsername<T>({@required String failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

  InvalidTitle<T> invalidTitle<T>({@required String failedValue}) {
    return InvalidTitle<T>(
      failedValue: failedValue,
    );
  }

  InvalidDescription<T> invalidDescription<T>({@required String failedValue}) {
    return InvalidDescription<T>(
      failedValue: failedValue,
    );
  }

  InvalidGenre<T> invalidGenre<T>({@required String failedValue}) {
    return InvalidGenre<T>(
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
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
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
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
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
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
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
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
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
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
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
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
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
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
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

abstract class $InvalidTitleCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidTitleCopyWith(
          InvalidTitle<T> value, $Res Function(InvalidTitle<T>) then) =
      _$InvalidTitleCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

class _$InvalidTitleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidTitleCopyWith<T, $Res> {
  _$InvalidTitleCopyWithImpl(
      InvalidTitle<T> _value, $Res Function(InvalidTitle<T>) _then)
      : super(_value, (v) => _then(v as InvalidTitle<T>));

  @override
  InvalidTitle<T> get _value => super._value as InvalidTitle<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidTitle<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidTitle<T> implements InvalidTitle<T> {
  const _$InvalidTitle({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidTitle(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidTitle<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidTitleCopyWith<T, InvalidTitle<T>> get copyWith =>
      _$InvalidTitleCopyWithImpl<T, InvalidTitle<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidTitle(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidTitle != null) {
      return invalidTitle(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidTitle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidTitle != null) {
      return invalidTitle(this);
    }
    return orElse();
  }
}

abstract class InvalidTitle<T> implements ValueFailure<T> {
  const factory InvalidTitle({@required String failedValue}) =
      _$InvalidTitle<T>;

  @override
  String get failedValue;
  @override
  $InvalidTitleCopyWith<T, InvalidTitle<T>> get copyWith;
}

abstract class $InvalidDescriptionCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidDescriptionCopyWith(InvalidDescription<T> value,
          $Res Function(InvalidDescription<T>) then) =
      _$InvalidDescriptionCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

class _$InvalidDescriptionCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDescriptionCopyWith<T, $Res> {
  _$InvalidDescriptionCopyWithImpl(
      InvalidDescription<T> _value, $Res Function(InvalidDescription<T>) _then)
      : super(_value, (v) => _then(v as InvalidDescription<T>));

  @override
  InvalidDescription<T> get _value => super._value as InvalidDescription<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDescription<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidDescription<T> implements InvalidDescription<T> {
  const _$InvalidDescription({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDescription(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDescription<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidDescriptionCopyWith<T, InvalidDescription<T>> get copyWith =>
      _$InvalidDescriptionCopyWithImpl<T, InvalidDescription<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidDescription(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDescription != null) {
      return invalidDescription(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidDescription(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDescription != null) {
      return invalidDescription(this);
    }
    return orElse();
  }
}

abstract class InvalidDescription<T> implements ValueFailure<T> {
  const factory InvalidDescription({@required String failedValue}) =
      _$InvalidDescription<T>;

  @override
  String get failedValue;
  @override
  $InvalidDescriptionCopyWith<T, InvalidDescription<T>> get copyWith;
}

abstract class $InvalidGenreCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidGenreCopyWith(
          InvalidGenre<T> value, $Res Function(InvalidGenre<T>) then) =
      _$InvalidGenreCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

class _$InvalidGenreCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidGenreCopyWith<T, $Res> {
  _$InvalidGenreCopyWithImpl(
      InvalidGenre<T> _value, $Res Function(InvalidGenre<T>) _then)
      : super(_value, (v) => _then(v as InvalidGenre<T>));

  @override
  InvalidGenre<T> get _value => super._value as InvalidGenre<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidGenre<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidGenre<T> implements InvalidGenre<T> {
  const _$InvalidGenre({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidGenre(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidGenre<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidGenreCopyWith<T, InvalidGenre<T>> get copyWith =>
      _$InvalidGenreCopyWithImpl<T, InvalidGenre<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailAddress(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidUsername(String failedValue),
    @required Result invalidTitle(String failedValue),
    @required Result invalidDescription(String failedValue),
    @required Result invalidGenre(String failedValue),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidGenre(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailAddress(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidUsername(String failedValue),
    Result invalidTitle(String failedValue),
    Result invalidDescription(String failedValue),
    Result invalidGenre(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidGenre != null) {
      return invalidGenre(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmailAddress(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result invalidTitle(InvalidTitle<T> value),
    @required Result invalidDescription(InvalidDescription<T> value),
    @required Result invalidGenre(InvalidGenre<T> value),
  }) {
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(invalidTitle != null);
    assert(invalidDescription != null);
    assert(invalidGenre != null);
    return invalidGenre(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailAddress(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result invalidTitle(InvalidTitle<T> value),
    Result invalidDescription(InvalidDescription<T> value),
    Result invalidGenre(InvalidGenre<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidGenre != null) {
      return invalidGenre(this);
    }
    return orElse();
  }
}

abstract class InvalidGenre<T> implements ValueFailure<T> {
  const factory InvalidGenre({@required String failedValue}) =
      _$InvalidGenre<T>;

  @override
  String get failedValue;
  @override
  $InvalidGenreCopyWith<T, InvalidGenre<T>> get copyWith;
}
