/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img.jpeg
  AssetGenImage get img => const AssetGenImage('assets/images/img.jpeg');

  /// File path: assets/images/img_sao_ke.png
  AssetGenImage get imgSaoKe =>
      const AssetGenImage('assets/images/img_sao_ke.png');

  $AssetsImagesTestGen get test => const $AssetsImagesTestGen();
}

class $AssetsImagesTestGen {
  const $AssetsImagesTestGen();

  /// File path: assets/images/test/a1.jpg
  AssetGenImage get a1 => const AssetGenImage('assets/images/test/a1.jpg');

  /// File path: assets/images/test/a10.jpg
  AssetGenImage get a10 => const AssetGenImage('assets/images/test/a10.jpg');

  /// File path: assets/images/test/a11.jpg
  AssetGenImage get a11 => const AssetGenImage('assets/images/test/a11.jpg');

  /// File path: assets/images/test/a12.jpg
  AssetGenImage get a12 => const AssetGenImage('assets/images/test/a12.jpg');

  /// File path: assets/images/test/a13.jpg
  AssetGenImage get a13 => const AssetGenImage('assets/images/test/a13.jpg');

  /// File path: assets/images/test/a14.jpg
  AssetGenImage get a14 => const AssetGenImage('assets/images/test/a14.jpg');

  /// File path: assets/images/test/a15.jpg
  AssetGenImage get a15 => const AssetGenImage('assets/images/test/a15.jpg');

  /// File path: assets/images/test/a16.jpg
  AssetGenImage get a16 => const AssetGenImage('assets/images/test/a16.jpg');

  /// File path: assets/images/test/a2.jpg
  AssetGenImage get a2 => const AssetGenImage('assets/images/test/a2.jpg');

  /// File path: assets/images/test/a3.jpg
  AssetGenImage get a3 => const AssetGenImage('assets/images/test/a3.jpg');

  /// File path: assets/images/test/a4.jpg
  AssetGenImage get a4 => const AssetGenImage('assets/images/test/a4.jpg');

  /// File path: assets/images/test/a5.jpg
  AssetGenImage get a5 => const AssetGenImage('assets/images/test/a5.jpg');

  /// File path: assets/images/test/a6.jpg
  AssetGenImage get a6 => const AssetGenImage('assets/images/test/a6.jpg');

  /// File path: assets/images/test/a7.jpg
  AssetGenImage get a7 => const AssetGenImage('assets/images/test/a7.jpg');

  /// File path: assets/images/test/a8.jpg
  AssetGenImage get a8 => const AssetGenImage('assets/images/test/a8.jpg');

  /// File path: assets/images/test/a9.jpg
  AssetGenImage get a9 => const AssetGenImage('assets/images/test/a9.jpg');
}

class Assets {
  Assets._();

  static const AssetGenImage builtByJhbBlack =
      AssetGenImage('assets/built_by_jhb_black.png');
  static const AssetGenImage builtByJhbWhite =
      AssetGenImage('assets/built_by_jhb_white.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
