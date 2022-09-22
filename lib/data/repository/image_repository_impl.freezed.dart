// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_repository_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageModelTearOff {
  const _$ImageModelTearOff();

  _ImageModel call({required String path, String tag = ""}) {
    return _ImageModel(
      path: path,
      tag: tag,
    );
  }
}

/// @nodoc
const $ImageModel = _$ImageModelTearOff();

/// @nodoc
mixin _$ImageModel {
  String get path => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res>;
  $Res call({String path, String tag});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res> implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  final ImageModel _value;
  // ignore: unused_field
  final $Res Function(ImageModel) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageModelCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$ImageModelCopyWith(
          _ImageModel value, $Res Function(_ImageModel) then) =
      __$ImageModelCopyWithImpl<$Res>;
  @override
  $Res call({String path, String tag});
}

/// @nodoc
class __$ImageModelCopyWithImpl<$Res> extends _$ImageModelCopyWithImpl<$Res>
    implements _$ImageModelCopyWith<$Res> {
  __$ImageModelCopyWithImpl(
      _ImageModel _value, $Res Function(_ImageModel) _then)
      : super(_value, (v) => _then(v as _ImageModel));

  @override
  _ImageModel get _value => super._value as _ImageModel;

  @override
  $Res call({
    Object? path = freezed,
    Object? tag = freezed,
  }) {
    return _then(_ImageModel(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageModel implements _ImageModel {
  const _$_ImageModel({required this.path, this.tag = ""});

  @override
  final String path;
  @JsonKey()
  @override
  final String tag;

  @override
  String toString() {
    return 'ImageModel(path: $path, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageModel &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$ImageModelCopyWith<_ImageModel> get copyWith =>
      __$ImageModelCopyWithImpl<_ImageModel>(this, _$identity);
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel({required String path, String tag}) = _$_ImageModel;

  @override
  String get path;
  @override
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$ImageModelCopyWith<_ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AlbumModelTearOff {
  const _$AlbumModelTearOff();

  _AlbumModel call(
      {required int id,
      required String name,
      String tag = '',
      List<ImageModel> images = const []}) {
    return _AlbumModel(
      id: id,
      name: name,
      tag: tag,
      images: images,
    );
  }
}

/// @nodoc
const $AlbumModel = _$AlbumModelTearOff();

/// @nodoc
mixin _$AlbumModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumModelCopyWith<AlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumModelCopyWith<$Res> {
  factory $AlbumModelCopyWith(
          AlbumModel value, $Res Function(AlbumModel) then) =
      _$AlbumModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String tag, List<ImageModel> images});
}

/// @nodoc
class _$AlbumModelCopyWithImpl<$Res> implements $AlbumModelCopyWith<$Res> {
  _$AlbumModelCopyWithImpl(this._value, this._then);

  final AlbumModel _value;
  // ignore: unused_field
  final $Res Function(AlbumModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
abstract class _$AlbumModelCopyWith<$Res> implements $AlbumModelCopyWith<$Res> {
  factory _$AlbumModelCopyWith(
          _AlbumModel value, $Res Function(_AlbumModel) then) =
      __$AlbumModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String tag, List<ImageModel> images});
}

/// @nodoc
class __$AlbumModelCopyWithImpl<$Res> extends _$AlbumModelCopyWithImpl<$Res>
    implements _$AlbumModelCopyWith<$Res> {
  __$AlbumModelCopyWithImpl(
      _AlbumModel _value, $Res Function(_AlbumModel) _then)
      : super(_value, (v) => _then(v as _AlbumModel));

  @override
  _AlbumModel get _value => super._value as _AlbumModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tag = freezed,
    Object? images = freezed,
  }) {
    return _then(_AlbumModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$_AlbumModel implements _AlbumModel {
  const _$_AlbumModel(
      {required this.id,
      required this.name,
      this.tag = '',
      this.images = const []});

  @override
  final int id;
  @override
  final String name;
  @JsonKey()
  @override
  final String tag;
  @JsonKey()
  @override
  final List<ImageModel> images;

  @override
  String toString() {
    return 'AlbumModel(id: $id, name: $name, tag: $tag, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$AlbumModelCopyWith<_AlbumModel> get copyWith =>
      __$AlbumModelCopyWithImpl<_AlbumModel>(this, _$identity);
}

abstract class _AlbumModel implements AlbumModel {
  const factory _AlbumModel(
      {required int id,
      required String name,
      String tag,
      List<ImageModel> images}) = _$_AlbumModel;

  @override
  int get id;
  @override
  String get name;
  @override
  String get tag;
  @override
  List<ImageModel> get images;
  @override
  @JsonKey(ignore: true)
  _$AlbumModelCopyWith<_AlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}
