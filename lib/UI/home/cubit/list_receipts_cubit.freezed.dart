// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_receipts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListReceiptsStateTearOff {
  const _$ListReceiptsStateTearOff();

  _Initial initial({required List<Receipt> receipts}) {
    return _Initial(
      receipts: receipts,
    );
  }
}

/// @nodoc
const $ListReceiptsState = _$ListReceiptsStateTearOff();

/// @nodoc
mixin _$ListReceiptsState {
  List<Receipt> get receipts => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt> receipts) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Receipt> receipts)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt> receipts)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListReceiptsStateCopyWith<ListReceiptsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListReceiptsStateCopyWith<$Res> {
  factory $ListReceiptsStateCopyWith(
          ListReceiptsState value, $Res Function(ListReceiptsState) then) =
      _$ListReceiptsStateCopyWithImpl<$Res>;
  $Res call({List<Receipt> receipts});
}

/// @nodoc
class _$ListReceiptsStateCopyWithImpl<$Res>
    implements $ListReceiptsStateCopyWith<$Res> {
  _$ListReceiptsStateCopyWithImpl(this._value, this._then);

  final ListReceiptsState _value;
  // ignore: unused_field
  final $Res Function(ListReceiptsState) _then;

  @override
  $Res call({
    Object? receipts = freezed,
  }) {
    return _then(_value.copyWith(
      receipts: receipts == freezed
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $ListReceiptsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Receipt> receipts});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListReceiptsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? receipts = freezed,
  }) {
    return _then(_Initial(
      receipts: receipts == freezed
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.receipts});

  @override
  final List<Receipt> receipts;

  @override
  String toString() {
    return 'ListReceiptsState.initial(receipts: $receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.receipts, receipts) ||
                const DeepCollectionEquality()
                    .equals(other.receipts, receipts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receipts);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Receipt> receipts) initial,
  }) {
    return initial(receipts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Receipt> receipts)? initial,
  }) {
    return initial?.call(receipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Receipt> receipts)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(receipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListReceiptsState {
  const factory _Initial({required List<Receipt> receipts}) = _$_Initial;

  @override
  List<Receipt> get receipts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
