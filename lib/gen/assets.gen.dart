/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetIconGen {
  const $AssetIconGen();

  /// File path: asset/icon/book_icon.png
  AssetGenImage get bookIcon => const AssetGenImage('asset/icon/book_icon.png');

  /// File path: asset/icon/fluent_people_icon.png
  AssetGenImage get fluentPeopleIcon =>
      const AssetGenImage('asset/icon/fluent_people_icon.png');

  /// File path: asset/icon/hamber_icon.png
  AssetGenImage get hamberIcon =>
      const AssetGenImage('asset/icon/hamber_icon.png');

  /// File path: asset/icon/library_icon.png
  AssetGenImage get libraryIcon =>
      const AssetGenImage('asset/icon/library_icon.png');

  /// File path: asset/icon/mdi_cart_icon.png
  AssetGenImage get mdiCartIcon =>
      const AssetGenImage('asset/icon/mdi_cart_icon.png');

  /// File path: asset/icon/mines_icon.png
  AssetGenImage get minesIcon =>
      const AssetGenImage('asset/icon/mines_icon.png');

  /// File path: asset/icon/notif_icon.png
  AssetGenImage get notifIcon =>
      const AssetGenImage('asset/icon/notif_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bookIcon,
        fluentPeopleIcon,
        hamberIcon,
        libraryIcon,
        mdiCartIcon,
        minesIcon,
        notifIcon
      ];
}

class $AssetImageGen {
  const $AssetImageGen();

  /// File path: asset/image/Group 2905.png
  AssetGenImage get group2905 =>
      const AssetGenImage('asset/image/Group 2905.png');

  /// File path: asset/image/Group 2906.png
  AssetGenImage get group2906 =>
      const AssetGenImage('asset/image/Group 2906.png');

  /// File path: asset/image/Group 2907.png
  AssetGenImage get group2907 =>
      const AssetGenImage('asset/image/Group 2907.png');

  /// File path: asset/image/Group 2908.png
  AssetGenImage get group2908 =>
      const AssetGenImage('asset/image/Group 2908.png');

  /// File path: asset/image/Group 2909.png
  AssetGenImage get group2909 =>
      const AssetGenImage('asset/image/Group 2909.png');

  /// File path: asset/image/Group 2910.png
  AssetGenImage get group2910 =>
      const AssetGenImage('asset/image/Group 2910.png');

  /// File path: asset/image/Rectangle 2.png
  AssetGenImage get rectangle2 =>
      const AssetGenImage('asset/image/Rectangle 2.png');

  /// File path: asset/image/Rectangle 4.png
  AssetGenImage get rectangle4 =>
      const AssetGenImage('asset/image/Rectangle 4.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        group2905,
        group2906,
        group2907,
        group2908,
        group2909,
        group2910,
        rectangle2,
        rectangle4
      ];
}

class Assets {
  Assets._();

  static const $AssetIconGen icon = $AssetIconGen();
  static const $AssetImageGen image = $AssetImageGen();
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
