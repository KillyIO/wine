// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  EmptySelection<T> emptySelection<T>(T failedValue) {
    return EmptySelection<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidCoverFile<T> invalidCoverFile<T>(T failureValue) {
    return InvalidCoverFile<T>(
      failureValue,
    );
  }

// ignore: unused_element
  InvalidCoverURL<T> invalidCoverURL<T>(T failedValue) {
    return InvalidCoverURL<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmailAddress<T>(T failedValue) {
    return InvalidEmail<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>(T failedValue) {
    return InvalidPassword<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidConfirmPassword<T> invalidConfirmPassword<T>(T failedValue) {
    return InvalidConfirmPassword<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidUniqueID<T> invalidUniqueID<T>(T failedValue) {
    return InvalidUniqueID<T>(
      failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>(T failedValue) {
    return InvalidUsername<T>(
      failedValue,
    );
  }

// ignore: unused_element
  TooLongInput<T> tooLongInput<T>(T failedValue) {
    return TooLongInput<T>(
      failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $EmptySelectionCopyWith<T, $Res> {
  factory $EmptySelectionCopyWith(
          EmptySelection<T> value, $Res Function(EmptySelection<T>) then) =
      _$EmptySelectionCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
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
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$EmptySelection<T> implements EmptySelection<T> {
  const _$EmptySelection(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

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
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return emptySelection(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
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
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return emptySelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
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
  const factory EmptySelection(T failedValue) = _$EmptySelection<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmptySelectionCopyWith<T, EmptySelection<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidCoverFileCopyWith<T, $Res> {
  factory $InvalidCoverFileCopyWith(
          InvalidCoverFile<T> value, $Res Function(InvalidCoverFile<T>) then) =
      _$InvalidCoverFileCopyWithImpl<T, $Res>;
  $Res call({T failureValue});
}

/// @nodoc
class _$InvalidCoverFileCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCoverFileCopyWith<T, $Res> {
  _$InvalidCoverFileCopyWithImpl(
      InvalidCoverFile<T> _value, $Res Function(InvalidCoverFile<T>) _then)
      : super(_value, (v) => _then(v as InvalidCoverFile<T>));

  @override
  InvalidCoverFile<T> get _value => super._value as InvalidCoverFile<T>;

  @override
  $Res call({
    Object failureValue = freezed,
  }) {
    return _then(InvalidCoverFile<T>(
      failureValue == freezed ? _value.failureValue : failureValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidCoverFile<T> implements InvalidCoverFile<T> {
  const _$InvalidCoverFile(this.failureValue) : assert(failureValue != null);

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCoverFile(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCoverFile<T> &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureValue);

  @JsonKey(ignore: true)
  @override
  $InvalidCoverFileCopyWith<T, InvalidCoverFile<T>> get copyWith =>
      _$InvalidCoverFileCopyWithImpl<T, InvalidCoverFile<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidCoverFile(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoverFile != null) {
      return invalidCoverFile(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidCoverFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoverFile != null) {
      return invalidCoverFile(this);
    }
    return orElse();
  }
}

abstract class InvalidCoverFile<T> implements ValueFailure<T> {
  const factory InvalidCoverFile(T failureValue) = _$InvalidCoverFile<T>;

  T get failureValue;
  @JsonKey(ignore: true)
  $InvalidCoverFileCopyWith<T, InvalidCoverFile<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidCoverURLCopyWith<T, $Res> {
  factory $InvalidCoverURLCopyWith(
          InvalidCoverURL<T> value, $Res Function(InvalidCoverURL<T>) then) =
      _$InvalidCoverURLCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidCoverURLCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCoverURLCopyWith<T, $Res> {
  _$InvalidCoverURLCopyWithImpl(
      InvalidCoverURL<T> _value, $Res Function(InvalidCoverURL<T>) _then)
      : super(_value, (v) => _then(v as InvalidCoverURL<T>));

  @override
  InvalidCoverURL<T> get _value => super._value as InvalidCoverURL<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCoverURL<T>(
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidCoverURL<T> implements InvalidCoverURL<T> {
  const _$InvalidCoverURL(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCoverURL(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCoverURL<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidCoverURLCopyWith<T, InvalidCoverURL<T>> get copyWith =>
      _$InvalidCoverURLCopyWithImpl<T, InvalidCoverURL<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidCoverURL(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoverURL != null) {
      return invalidCoverURL(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidCoverURL(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoverURL != null) {
      return invalidCoverURL(this);
    }
    return orElse();
  }
}

abstract class InvalidCoverURL<T> implements ValueFailure<T> {
  const factory InvalidCoverURL(T failedValue) = _$InvalidCoverURL<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidCoverURLCopyWith<T, InvalidCoverURL<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
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
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

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
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
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
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
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
  const factory InvalidEmail(T failedValue) = _$InvalidEmail<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
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
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

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
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
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
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
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
  const factory InvalidPassword(T failedValue) = _$InvalidPassword<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidConfirmPasswordCopyWith<T, $Res> {
  factory $InvalidConfirmPasswordCopyWith(InvalidConfirmPassword<T> value,
          $Res Function(InvalidConfirmPassword<T>) then) =
      _$InvalidConfirmPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
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
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidConfirmPassword<T> implements InvalidConfirmPassword<T> {
  const _$InvalidConfirmPassword(this.failedValue)
      : assert(failedValue != null);

  @override
  final T failedValue;

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
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidConfirmPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
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
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
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
  const factory InvalidConfirmPassword(T failedValue) =
      _$InvalidConfirmPassword<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidConfirmPasswordCopyWith<T, InvalidConfirmPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUniqueIDCopyWith<T, $Res> {
  factory $InvalidUniqueIDCopyWith(
          InvalidUniqueID<T> value, $Res Function(InvalidUniqueID<T>) then) =
      _$InvalidUniqueIDCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUniqueIDCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUniqueIDCopyWith<T, $Res> {
  _$InvalidUniqueIDCopyWithImpl(
      InvalidUniqueID<T> _value, $Res Function(InvalidUniqueID<T>) _then)
      : super(_value, (v) => _then(v as InvalidUniqueID<T>));

  @override
  InvalidUniqueID<T> get _value => super._value as InvalidUniqueID<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUniqueID<T>(
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUniqueID<T> implements InvalidUniqueID<T> {
  const _$InvalidUniqueID(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUniqueID(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUniqueID<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUniqueIDCopyWith<T, InvalidUniqueID<T>> get copyWith =>
      _$InvalidUniqueIDCopyWithImpl<T, InvalidUniqueID<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidUniqueID(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUniqueID != null) {
      return invalidUniqueID(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidUniqueID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUniqueID != null) {
      return invalidUniqueID(this);
    }
    return orElse();
  }
}

abstract class InvalidUniqueID<T> implements ValueFailure<T> {
  const factory InvalidUniqueID(T failedValue) = _$InvalidUniqueID<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidUniqueIDCopyWith<T, InvalidUniqueID<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
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
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

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
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
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
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
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
  const factory InvalidUsername(T failedValue) = _$InvalidUsername<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class $TooLongInputCopyWith<T, $Res> {
  factory $TooLongInputCopyWith(
          TooLongInput<T> value, $Res Function(TooLongInput<T>) then) =
      _$TooLongInputCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$TooLongInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $TooLongInputCopyWith<T, $Res> {
  _$TooLongInputCopyWithImpl(
      TooLongInput<T> _value, $Res Function(TooLongInput<T>) _then)
      : super(_value, (v) => _then(v as TooLongInput<T>));

  @override
  TooLongInput<T> get _value => super._value as TooLongInput<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(TooLongInput<T>(
      failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$TooLongInput<T> implements TooLongInput<T> {
  const _$TooLongInput(this.failedValue) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.tooLongInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooLongInput<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $TooLongInputCopyWith<T, TooLongInput<T>> get copyWith =>
      _$TooLongInputCopyWithImpl<T, TooLongInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emptySelection(T failedValue),
    @required TResult invalidCoverFile(T failureValue),
    @required TResult invalidCoverURL(T failedValue),
    @required TResult invalidEmailAddress(T failedValue),
    @required TResult invalidPassword(T failedValue),
    @required TResult invalidConfirmPassword(T failedValue),
    @required TResult invalidUniqueID(T failedValue),
    @required TResult invalidUsername(T failedValue),
    @required TResult tooLongInput(T failedValue),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return tooLongInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emptySelection(T failedValue),
    TResult invalidCoverFile(T failureValue),
    TResult invalidCoverURL(T failedValue),
    TResult invalidEmailAddress(T failedValue),
    TResult invalidPassword(T failedValue),
    TResult invalidConfirmPassword(T failedValue),
    TResult invalidUniqueID(T failedValue),
    TResult invalidUsername(T failedValue),
    TResult tooLongInput(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tooLongInput != null) {
      return tooLongInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emptySelection(EmptySelection<T> value),
    @required TResult invalidCoverFile(InvalidCoverFile<T> value),
    @required TResult invalidCoverURL(InvalidCoverURL<T> value),
    @required TResult invalidEmailAddress(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    @required TResult invalidUniqueID(InvalidUniqueID<T> value),
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult tooLongInput(TooLongInput<T> value),
  }) {
    assert(emptySelection != null);
    assert(invalidCoverFile != null);
    assert(invalidCoverURL != null);
    assert(invalidEmailAddress != null);
    assert(invalidPassword != null);
    assert(invalidConfirmPassword != null);
    assert(invalidUniqueID != null);
    assert(invalidUsername != null);
    assert(tooLongInput != null);
    return tooLongInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emptySelection(EmptySelection<T> value),
    TResult invalidCoverFile(InvalidCoverFile<T> value),
    TResult invalidCoverURL(InvalidCoverURL<T> value),
    TResult invalidEmailAddress(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult invalidConfirmPassword(InvalidConfirmPassword<T> value),
    TResult invalidUniqueID(InvalidUniqueID<T> value),
    TResult invalidUsername(InvalidUsername<T> value),
    TResult tooLongInput(TooLongInput<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tooLongInput != null) {
      return tooLongInput(this);
    }
    return orElse();
  }
}

abstract class TooLongInput<T> implements ValueFailure<T> {
  const factory TooLongInput(T failedValue) = _$TooLongInput<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $TooLongInputCopyWith<T, TooLongInput<T>> get copyWith;
}
