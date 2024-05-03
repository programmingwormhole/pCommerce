/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/blocked.json
  String get blocked => 'assets/animations/blocked.json';

  /// File path: assets/animations/complete.json
  String get complete => 'assets/animations/complete.json';

  /// File path: assets/animations/loading.json
  String get loading => 'assets/animations/loading.json';

  /// File path: assets/animations/onboarding.json
  String get onboarding => 'assets/animations/onboarding.json';

  /// File path: assets/animations/splash_loading.json
  String get splashLoading => 'assets/animations/splash_loading.json';

  /// List of all assets
  List<String> get values =>
      [blocked, complete, loading, onboarding, splashLoading];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mobile.jpg
  AssetGenImage get mobile => const AssetGenImage('assets/images/mobile.jpg');

  /// File path: assets/images/on1.png
  AssetGenImage get on1 => const AssetGenImage('assets/images/on1.png');

  /// File path: assets/images/on2.png
  AssetGenImage get on2 => const AssetGenImage('assets/images/on2.png');

  /// File path: assets/images/on3.png
  AssetGenImage get on3 => const AssetGenImage('assets/images/on3.png');

  /// File path: assets/images/onboard.png
  AssetGenImage get onboard => const AssetGenImage('assets/images/onboard.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo, mobile, on1, on2, on3, onboard];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/email.svg
  String get email => 'assets/svg/email.svg';

  /// File path: assets/svg/eye_close.svg
  String get eyeClose => 'assets/svg/eye_close.svg';

  /// File path: assets/svg/eye_open.svg
  String get eyeOpen => 'assets/svg/eye_open.svg';

  /// File path: assets/svg/key.svg
  String get key => 'assets/svg/key.svg';

  /// File path: assets/svg/logo.svg
  String get logo => 'assets/svg/logo.svg';

  /// File path: assets/svg/person.svg
  String get person => 'assets/svg/person.svg';

  /// List of all assets
  List<String> get values => [email, eyeClose, eyeOpen, key, logo, person];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
