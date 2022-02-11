// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PopularMovieStateTearOff {
  const _$PopularMovieStateTearOff();

  PopularMovieStateLoading loading() {
    return const PopularMovieStateLoading();
  }

  PopularMovieStateLoaded loaded(MovieResponse response) {
    return PopularMovieStateLoaded(
      response,
    );
  }
}

/// @nodoc
const $PopularMovieState = _$PopularMovieStateTearOff();

/// @nodoc
mixin _$PopularMovieState {
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
    required TResult Function(PopularMovieStateLoading value) loading,
    required TResult Function(PopularMovieStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMovieStateCopyWith<$Res> {
  factory $PopularMovieStateCopyWith(
          PopularMovieState value, $Res Function(PopularMovieState) then) =
      _$PopularMovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMovieStateCopyWithImpl<$Res>
    implements $PopularMovieStateCopyWith<$Res> {
  _$PopularMovieStateCopyWithImpl(this._value, this._then);

  final PopularMovieState _value;
  // ignore: unused_field
  final $Res Function(PopularMovieState) _then;
}

/// @nodoc
abstract class $PopularMovieStateLoadingCopyWith<$Res> {
  factory $PopularMovieStateLoadingCopyWith(PopularMovieStateLoading value,
          $Res Function(PopularMovieStateLoading) then) =
      _$PopularMovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMovieStateLoadingCopyWithImpl<$Res>
    extends _$PopularMovieStateCopyWithImpl<$Res>
    implements $PopularMovieStateLoadingCopyWith<$Res> {
  _$PopularMovieStateLoadingCopyWithImpl(PopularMovieStateLoading _value,
      $Res Function(PopularMovieStateLoading) _then)
      : super(_value, (v) => _then(v as PopularMovieStateLoading));

  @override
  PopularMovieStateLoading get _value =>
      super._value as PopularMovieStateLoading;
}

/// @nodoc

class _$PopularMovieStateLoading implements PopularMovieStateLoading {
  const _$PopularMovieStateLoading();

  @override
  String toString() {
    return 'PopularMovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularMovieStateLoading);
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
    required TResult Function(PopularMovieStateLoading value) loading,
    required TResult Function(PopularMovieStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PopularMovieStateLoading implements PopularMovieState {
  const factory PopularMovieStateLoading() = _$PopularMovieStateLoading;
}

/// @nodoc
abstract class $PopularMovieStateLoadedCopyWith<$Res> {
  factory $PopularMovieStateLoadedCopyWith(PopularMovieStateLoaded value,
          $Res Function(PopularMovieStateLoaded) then) =
      _$PopularMovieStateLoadedCopyWithImpl<$Res>;
  $Res call({MovieResponse response});
}

/// @nodoc
class _$PopularMovieStateLoadedCopyWithImpl<$Res>
    extends _$PopularMovieStateCopyWithImpl<$Res>
    implements $PopularMovieStateLoadedCopyWith<$Res> {
  _$PopularMovieStateLoadedCopyWithImpl(PopularMovieStateLoaded _value,
      $Res Function(PopularMovieStateLoaded) _then)
      : super(_value, (v) => _then(v as PopularMovieStateLoaded));

  @override
  PopularMovieStateLoaded get _value => super._value as PopularMovieStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(PopularMovieStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MovieResponse,
    ));
  }
}

/// @nodoc

class _$PopularMovieStateLoaded implements PopularMovieStateLoaded {
  const _$PopularMovieStateLoaded(this.response);

  @override
  final MovieResponse response;

  @override
  String toString() {
    return 'PopularMovieState.loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularMovieStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $PopularMovieStateLoadedCopyWith<PopularMovieStateLoaded> get copyWith =>
      _$PopularMovieStateLoadedCopyWithImpl<PopularMovieStateLoaded>(
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
    required TResult Function(PopularMovieStateLoading value) loading,
    required TResult Function(PopularMovieStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieStateLoading value)? loading,
    TResult Function(PopularMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PopularMovieStateLoaded implements PopularMovieState {
  const factory PopularMovieStateLoaded(MovieResponse response) =
      _$PopularMovieStateLoaded;

  MovieResponse get response;
  @JsonKey(ignore: true)
  $PopularMovieStateLoadedCopyWith<PopularMovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PopularMovieEventTearOff {
  const _$PopularMovieEventTearOff();

  PopularMovieEventLoad load() {
    return const PopularMovieEventLoad();
  }

  PopularMovieEventExpand expand(bool isExpanded) {
    return PopularMovieEventExpand(
      isExpanded,
    );
  }
}

/// @nodoc
const $PopularMovieEvent = _$PopularMovieEventTearOff();

/// @nodoc
mixin _$PopularMovieEvent {
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
    required TResult Function(PopularMovieEventLoad value) load,
    required TResult Function(PopularMovieEventExpand value) expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMovieEventCopyWith<$Res> {
  factory $PopularMovieEventCopyWith(
          PopularMovieEvent value, $Res Function(PopularMovieEvent) then) =
      _$PopularMovieEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMovieEventCopyWithImpl<$Res>
    implements $PopularMovieEventCopyWith<$Res> {
  _$PopularMovieEventCopyWithImpl(this._value, this._then);

  final PopularMovieEvent _value;
  // ignore: unused_field
  final $Res Function(PopularMovieEvent) _then;
}

/// @nodoc
abstract class $PopularMovieEventLoadCopyWith<$Res> {
  factory $PopularMovieEventLoadCopyWith(PopularMovieEventLoad value,
          $Res Function(PopularMovieEventLoad) then) =
      _$PopularMovieEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularMovieEventLoadCopyWithImpl<$Res>
    extends _$PopularMovieEventCopyWithImpl<$Res>
    implements $PopularMovieEventLoadCopyWith<$Res> {
  _$PopularMovieEventLoadCopyWithImpl(
      PopularMovieEventLoad _value, $Res Function(PopularMovieEventLoad) _then)
      : super(_value, (v) => _then(v as PopularMovieEventLoad));

  @override
  PopularMovieEventLoad get _value => super._value as PopularMovieEventLoad;
}

/// @nodoc

class _$PopularMovieEventLoad implements PopularMovieEventLoad {
  const _$PopularMovieEventLoad();

  @override
  String toString() {
    return 'PopularMovieEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularMovieEventLoad);
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
    required TResult Function(PopularMovieEventLoad value) load,
    required TResult Function(PopularMovieEventExpand value) expand,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class PopularMovieEventLoad implements PopularMovieEvent {
  const factory PopularMovieEventLoad() = _$PopularMovieEventLoad;
}

/// @nodoc
abstract class $PopularMovieEventExpandCopyWith<$Res> {
  factory $PopularMovieEventExpandCopyWith(PopularMovieEventExpand value,
          $Res Function(PopularMovieEventExpand) then) =
      _$PopularMovieEventExpandCopyWithImpl<$Res>;
  $Res call({bool isExpanded});
}

/// @nodoc
class _$PopularMovieEventExpandCopyWithImpl<$Res>
    extends _$PopularMovieEventCopyWithImpl<$Res>
    implements $PopularMovieEventExpandCopyWith<$Res> {
  _$PopularMovieEventExpandCopyWithImpl(PopularMovieEventExpand _value,
      $Res Function(PopularMovieEventExpand) _then)
      : super(_value, (v) => _then(v as PopularMovieEventExpand));

  @override
  PopularMovieEventExpand get _value => super._value as PopularMovieEventExpand;

  @override
  $Res call({
    Object? isExpanded = freezed,
  }) {
    return _then(PopularMovieEventExpand(
      isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopularMovieEventExpand implements PopularMovieEventExpand {
  const _$PopularMovieEventExpand(this.isExpanded);

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'PopularMovieEvent.expand(isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PopularMovieEventExpand &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isExpanded));

  @JsonKey(ignore: true)
  @override
  $PopularMovieEventExpandCopyWith<PopularMovieEventExpand> get copyWith =>
      _$PopularMovieEventExpandCopyWithImpl<PopularMovieEventExpand>(
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
    required TResult Function(PopularMovieEventLoad value) load,
    required TResult Function(PopularMovieEventExpand value) expand,
  }) {
    return expand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
  }) {
    return expand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularMovieEventLoad value)? load,
    TResult Function(PopularMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(this);
    }
    return orElse();
  }
}

abstract class PopularMovieEventExpand implements PopularMovieEvent {
  const factory PopularMovieEventExpand(bool isExpanded) =
      _$PopularMovieEventExpand;

  bool get isExpanded;
  @JsonKey(ignore: true)
  $PopularMovieEventExpandCopyWith<PopularMovieEventExpand> get copyWith =>
      throw _privateConstructorUsedError;
}
