// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_rated_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopRatedMovieStateTearOff {
  const _$TopRatedMovieStateTearOff();

  TopRatedMovieStateLoading loading() {
    return const TopRatedMovieStateLoading();
  }

  TopRatedMovieStateLoaded loaded(MovieResponse response) {
    return TopRatedMovieStateLoaded(
      response,
    );
  }
}

/// @nodoc
const $TopRatedMovieState = _$TopRatedMovieStateTearOff();

/// @nodoc
mixin _$TopRatedMovieState {
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
    required TResult Function(TopRatedMovieStateLoading value) loading,
    required TResult Function(TopRatedMovieStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMovieStateCopyWith<$Res> {
  factory $TopRatedMovieStateCopyWith(
          TopRatedMovieState value, $Res Function(TopRatedMovieState) then) =
      _$TopRatedMovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopRatedMovieStateCopyWithImpl<$Res>
    implements $TopRatedMovieStateCopyWith<$Res> {
  _$TopRatedMovieStateCopyWithImpl(this._value, this._then);

  final TopRatedMovieState _value;
  // ignore: unused_field
  final $Res Function(TopRatedMovieState) _then;
}

/// @nodoc
abstract class $TopRatedMovieStateLoadingCopyWith<$Res> {
  factory $TopRatedMovieStateLoadingCopyWith(TopRatedMovieStateLoading value,
          $Res Function(TopRatedMovieStateLoading) then) =
      _$TopRatedMovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopRatedMovieStateLoadingCopyWithImpl<$Res>
    extends _$TopRatedMovieStateCopyWithImpl<$Res>
    implements $TopRatedMovieStateLoadingCopyWith<$Res> {
  _$TopRatedMovieStateLoadingCopyWithImpl(TopRatedMovieStateLoading _value,
      $Res Function(TopRatedMovieStateLoading) _then)
      : super(_value, (v) => _then(v as TopRatedMovieStateLoading));

  @override
  TopRatedMovieStateLoading get _value =>
      super._value as TopRatedMovieStateLoading;
}

/// @nodoc

class _$TopRatedMovieStateLoading implements TopRatedMovieStateLoading {
  const _$TopRatedMovieStateLoading();

  @override
  String toString() {
    return 'TopRatedMovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopRatedMovieStateLoading);
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
    required TResult Function(TopRatedMovieStateLoading value) loading,
    required TResult Function(TopRatedMovieStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopRatedMovieStateLoading implements TopRatedMovieState {
  const factory TopRatedMovieStateLoading() = _$TopRatedMovieStateLoading;
}

/// @nodoc
abstract class $TopRatedMovieStateLoadedCopyWith<$Res> {
  factory $TopRatedMovieStateLoadedCopyWith(TopRatedMovieStateLoaded value,
          $Res Function(TopRatedMovieStateLoaded) then) =
      _$TopRatedMovieStateLoadedCopyWithImpl<$Res>;
  $Res call({MovieResponse response});
}

/// @nodoc
class _$TopRatedMovieStateLoadedCopyWithImpl<$Res>
    extends _$TopRatedMovieStateCopyWithImpl<$Res>
    implements $TopRatedMovieStateLoadedCopyWith<$Res> {
  _$TopRatedMovieStateLoadedCopyWithImpl(TopRatedMovieStateLoaded _value,
      $Res Function(TopRatedMovieStateLoaded) _then)
      : super(_value, (v) => _then(v as TopRatedMovieStateLoaded));

  @override
  TopRatedMovieStateLoaded get _value =>
      super._value as TopRatedMovieStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(TopRatedMovieStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MovieResponse,
    ));
  }
}

/// @nodoc

class _$TopRatedMovieStateLoaded implements TopRatedMovieStateLoaded {
  const _$TopRatedMovieStateLoaded(this.response);

  @override
  final MovieResponse response;

  @override
  String toString() {
    return 'TopRatedMovieState.loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopRatedMovieStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $TopRatedMovieStateLoadedCopyWith<TopRatedMovieStateLoaded> get copyWith =>
      _$TopRatedMovieStateLoadedCopyWithImpl<TopRatedMovieStateLoaded>(
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
    required TResult Function(TopRatedMovieStateLoading value) loading,
    required TResult Function(TopRatedMovieStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieStateLoading value)? loading,
    TResult Function(TopRatedMovieStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TopRatedMovieStateLoaded implements TopRatedMovieState {
  const factory TopRatedMovieStateLoaded(MovieResponse response) =
      _$TopRatedMovieStateLoaded;

  MovieResponse get response;
  @JsonKey(ignore: true)
  $TopRatedMovieStateLoadedCopyWith<TopRatedMovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TopRatedMovieEventTearOff {
  const _$TopRatedMovieEventTearOff();

  TopRatedMovieEventLoad load() {
    return const TopRatedMovieEventLoad();
  }

  TopRatedMovieEventExpand expand(bool isExpanded) {
    return TopRatedMovieEventExpand(
      isExpanded,
    );
  }
}

/// @nodoc
const $TopRatedMovieEvent = _$TopRatedMovieEventTearOff();

/// @nodoc
mixin _$TopRatedMovieEvent {
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
    required TResult Function(TopRatedMovieEventLoad value) load,
    required TResult Function(TopRatedMovieEventExpand value) expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMovieEventCopyWith<$Res> {
  factory $TopRatedMovieEventCopyWith(
          TopRatedMovieEvent value, $Res Function(TopRatedMovieEvent) then) =
      _$TopRatedMovieEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopRatedMovieEventCopyWithImpl<$Res>
    implements $TopRatedMovieEventCopyWith<$Res> {
  _$TopRatedMovieEventCopyWithImpl(this._value, this._then);

  final TopRatedMovieEvent _value;
  // ignore: unused_field
  final $Res Function(TopRatedMovieEvent) _then;
}

/// @nodoc
abstract class $TopRatedMovieEventLoadCopyWith<$Res> {
  factory $TopRatedMovieEventLoadCopyWith(TopRatedMovieEventLoad value,
          $Res Function(TopRatedMovieEventLoad) then) =
      _$TopRatedMovieEventLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopRatedMovieEventLoadCopyWithImpl<$Res>
    extends _$TopRatedMovieEventCopyWithImpl<$Res>
    implements $TopRatedMovieEventLoadCopyWith<$Res> {
  _$TopRatedMovieEventLoadCopyWithImpl(TopRatedMovieEventLoad _value,
      $Res Function(TopRatedMovieEventLoad) _then)
      : super(_value, (v) => _then(v as TopRatedMovieEventLoad));

  @override
  TopRatedMovieEventLoad get _value => super._value as TopRatedMovieEventLoad;
}

/// @nodoc

class _$TopRatedMovieEventLoad implements TopRatedMovieEventLoad {
  const _$TopRatedMovieEventLoad();

  @override
  String toString() {
    return 'TopRatedMovieEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopRatedMovieEventLoad);
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
    required TResult Function(TopRatedMovieEventLoad value) load,
    required TResult Function(TopRatedMovieEventExpand value) expand,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TopRatedMovieEventLoad implements TopRatedMovieEvent {
  const factory TopRatedMovieEventLoad() = _$TopRatedMovieEventLoad;
}

/// @nodoc
abstract class $TopRatedMovieEventExpandCopyWith<$Res> {
  factory $TopRatedMovieEventExpandCopyWith(TopRatedMovieEventExpand value,
          $Res Function(TopRatedMovieEventExpand) then) =
      _$TopRatedMovieEventExpandCopyWithImpl<$Res>;
  $Res call({bool isExpanded});
}

/// @nodoc
class _$TopRatedMovieEventExpandCopyWithImpl<$Res>
    extends _$TopRatedMovieEventCopyWithImpl<$Res>
    implements $TopRatedMovieEventExpandCopyWith<$Res> {
  _$TopRatedMovieEventExpandCopyWithImpl(TopRatedMovieEventExpand _value,
      $Res Function(TopRatedMovieEventExpand) _then)
      : super(_value, (v) => _then(v as TopRatedMovieEventExpand));

  @override
  TopRatedMovieEventExpand get _value =>
      super._value as TopRatedMovieEventExpand;

  @override
  $Res call({
    Object? isExpanded = freezed,
  }) {
    return _then(TopRatedMovieEventExpand(
      isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TopRatedMovieEventExpand implements TopRatedMovieEventExpand {
  const _$TopRatedMovieEventExpand(this.isExpanded);

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'TopRatedMovieEvent.expand(isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopRatedMovieEventExpand &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isExpanded));

  @JsonKey(ignore: true)
  @override
  $TopRatedMovieEventExpandCopyWith<TopRatedMovieEventExpand> get copyWith =>
      _$TopRatedMovieEventExpandCopyWithImpl<TopRatedMovieEventExpand>(
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
    required TResult Function(TopRatedMovieEventLoad value) load,
    required TResult Function(TopRatedMovieEventExpand value) expand,
  }) {
    return expand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
  }) {
    return expand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopRatedMovieEventLoad value)? load,
    TResult Function(TopRatedMovieEventExpand value)? expand,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(this);
    }
    return orElse();
  }
}

abstract class TopRatedMovieEventExpand implements TopRatedMovieEvent {
  const factory TopRatedMovieEventExpand(bool isExpanded) =
      _$TopRatedMovieEventExpand;

  bool get isExpanded;
  @JsonKey(ignore: true)
  $TopRatedMovieEventExpandCopyWith<TopRatedMovieEventExpand> get copyWith =>
      throw _privateConstructorUsedError;
}
