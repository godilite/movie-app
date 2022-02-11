// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'latest_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LatestMovieStateTearOff {
  const _$LatestMovieStateTearOff();

  LatestMovieStateLoading loading() {
    return const LatestMovieStateLoading();
  }

  LatestMovieStateLoaded loaded(MovieResponse response) {
    return LatestMovieStateLoaded(
      response,
    );
  }
}

/// @nodoc
const $LatestMovieState = _$LatestMovieStateTearOff();

/// @nodoc
mixin _$LatestMovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieResponse response) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieStateLoading value) loading,
    required TResult Function(LatestMovieStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestMovieStateCopyWith<$Res> {
  factory $LatestMovieStateCopyWith(
          LatestMovieState value, $Res Function(LatestMovieState) then) =
      _$LatestMovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LatestMovieStateCopyWithImpl<$Res>
    implements $LatestMovieStateCopyWith<$Res> {
  _$LatestMovieStateCopyWithImpl(this._value, this._then);

  final LatestMovieState _value;
  // ignore: unused_field
  final $Res Function(LatestMovieState) _then;
}

/// @nodoc
abstract class $LatestMovieStateLoadingCopyWith<$Res> {
  factory $LatestMovieStateLoadingCopyWith(LatestMovieStateLoading value,
          $Res Function(LatestMovieStateLoading) then) =
      _$LatestMovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LatestMovieStateLoadingCopyWithImpl<$Res>
    extends _$LatestMovieStateCopyWithImpl<$Res>
    implements $LatestMovieStateLoadingCopyWith<$Res> {
  _$LatestMovieStateLoadingCopyWithImpl(LatestMovieStateLoading _value,
      $Res Function(LatestMovieStateLoading) _then)
      : super(_value, (v) => _then(v as LatestMovieStateLoading));

  @override
  LatestMovieStateLoading get _value => super._value as LatestMovieStateLoading;
}

/// @nodoc

class _$LatestMovieStateLoading implements LatestMovieStateLoading {
  const _$LatestMovieStateLoading();

  @override
  String toString() {
    return 'LatestMovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LatestMovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieResponse response) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieStateLoading value) loading,
    required TResult Function(LatestMovieStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LatestMovieStateLoading implements LatestMovieState {
  const factory LatestMovieStateLoading() = _$LatestMovieStateLoading;
}

/// @nodoc
abstract class $LatestMovieStateLoadedCopyWith<$Res> {
  factory $LatestMovieStateLoadedCopyWith(LatestMovieStateLoaded value,
          $Res Function(LatestMovieStateLoaded) then) =
      _$LatestMovieStateLoadedCopyWithImpl<$Res>;
  $Res call({MovieResponse response});
}

/// @nodoc
class _$LatestMovieStateLoadedCopyWithImpl<$Res>
    extends _$LatestMovieStateCopyWithImpl<$Res>
    implements $LatestMovieStateLoadedCopyWith<$Res> {
  _$LatestMovieStateLoadedCopyWithImpl(LatestMovieStateLoaded _value,
      $Res Function(LatestMovieStateLoaded) _then)
      : super(_value, (v) => _then(v as LatestMovieStateLoaded));

  @override
  LatestMovieStateLoaded get _value => super._value as LatestMovieStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(LatestMovieStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MovieResponse,
    ));
  }
}

/// @nodoc

class _$LatestMovieStateLoaded implements LatestMovieStateLoaded {
  const _$LatestMovieStateLoaded(this.response);

  @override
  final MovieResponse response;

  @override
  String toString() {
    return 'LatestMovieState.loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatestMovieStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $LatestMovieStateLoadedCopyWith<LatestMovieStateLoaded> get copyWith =>
      _$LatestMovieStateLoadedCopyWithImpl<LatestMovieStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieResponse response) loaded,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieResponse response)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieStateLoading value) loading,
    required TResult Function(LatestMovieStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieStateLoading value)? loading,
    TResult Function(LatestMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LatestMovieStateLoaded implements LatestMovieState {
  const factory LatestMovieStateLoaded(MovieResponse response) =
      _$LatestMovieStateLoaded;

  MovieResponse get response;
  @JsonKey(ignore: true)
  $LatestMovieStateLoadedCopyWith<LatestMovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LatestMovieEventTearOff {
  const _$LatestMovieEventTearOff();

  LatestMovieEventLoad load() {
    return const LatestMovieEventLoad();
  }

  LatestMovieEventExpand expand(bool isExpanded) {
    return LatestMovieEventExpand(
      isExpanded,
    );
  }
}

/// @nodoc
const $LatestMovieEvent = _$LatestMovieEventTearOff();

/// @nodoc
mixin _$LatestMovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool isExpanded) expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieEventLoad value) load,
    required TResult Function(LatestMovieEventExpand value) expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestMovieEventCopyWith<$Res> {
  factory $LatestMovieEventCopyWith(
          LatestMovieEvent value, $Res Function(LatestMovieEvent) then) =
      _$LatestMovieEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LatestMovieEventCopyWithImpl<$Res>
    implements $LatestMovieEventCopyWith<$Res> {
  _$LatestMovieEventCopyWithImpl(this._value, this._then);

  final LatestMovieEvent _value;
  // ignore: unused_field
  final $Res Function(LatestMovieEvent) _then;
}

/// @nodoc
abstract class $LatestMovieEventLoadCopyWith<$Res> {
  factory $LatestMovieEventLoadCopyWith(LatestMovieEventLoad value,
          $Res Function(LatestMovieEventLoad) then) =
      _$LatestMovieEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$LatestMovieEventLoadCopyWithImpl<$Res>
    extends _$LatestMovieEventCopyWithImpl<$Res>
    implements $LatestMovieEventLoadCopyWith<$Res> {
  _$LatestMovieEventLoadCopyWithImpl(
      LatestMovieEventLoad _value, $Res Function(LatestMovieEventLoad) _then)
      : super(_value, (v) => _then(v as LatestMovieEventLoad));

  @override
  LatestMovieEventLoad get _value => super._value as LatestMovieEventLoad;
}

/// @nodoc

class _$LatestMovieEventLoad implements LatestMovieEventLoad {
  const _$LatestMovieEventLoad();

  @override
  String toString() {
    return 'LatestMovieEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LatestMovieEventLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool isExpanded) expand,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieEventLoad value) load,
    required TResult Function(LatestMovieEventExpand value) expand,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LatestMovieEventLoad implements LatestMovieEvent {
  const factory LatestMovieEventLoad() = _$LatestMovieEventLoad;
}

/// @nodoc
abstract class $LatestMovieEventExpandCopyWith<$Res> {
  factory $LatestMovieEventExpandCopyWith(LatestMovieEventExpand value,
          $Res Function(LatestMovieEventExpand) then) =
      _$LatestMovieEventExpandCopyWithImpl<$Res>;
  $Res call({bool isExpanded});
}

/// @nodoc
class _$LatestMovieEventExpandCopyWithImpl<$Res>
    extends _$LatestMovieEventCopyWithImpl<$Res>
    implements $LatestMovieEventExpandCopyWith<$Res> {
  _$LatestMovieEventExpandCopyWithImpl(LatestMovieEventExpand _value,
      $Res Function(LatestMovieEventExpand) _then)
      : super(_value, (v) => _then(v as LatestMovieEventExpand));

  @override
  LatestMovieEventExpand get _value => super._value as LatestMovieEventExpand;

  @override
  $Res call({
    Object? isExpanded = freezed,
  }) {
    return _then(LatestMovieEventExpand(
      isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LatestMovieEventExpand implements LatestMovieEventExpand {
  const _$LatestMovieEventExpand(this.isExpanded);

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'LatestMovieEvent.expand(isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatestMovieEventExpand &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isExpanded));

  @JsonKey(ignore: true)
  @override
  $LatestMovieEventExpandCopyWith<LatestMovieEventExpand> get copyWith =>
      _$LatestMovieEventExpandCopyWithImpl<LatestMovieEventExpand>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(bool isExpanded) expand,
  }) {
    return expand(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
  }) {
    return expand?.call(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(bool isExpanded)? expand,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LatestMovieEventLoad value) load,
    required TResult Function(LatestMovieEventExpand value) expand,
  }) {
    return expand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
  }) {
    return expand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LatestMovieEventLoad value)? load,
    TResult Function(LatestMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(this);
    }
    return orElse();
  }
}

abstract class LatestMovieEventExpand implements LatestMovieEvent {
  const factory LatestMovieEventExpand(bool isExpanded) =
      _$LatestMovieEventExpand;

  bool get isExpanded;
  @JsonKey(ignore: true)
  $LatestMovieEventExpandCopyWith<LatestMovieEventExpand> get copyWith =>
      throw _privateConstructorUsedError;
}
