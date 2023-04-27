/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetIconGen {
  const $AssetIconGen();

  /// File path: asset/icon/hamber_icon.png
  AssetGenImage get hamberIcon =>
      const AssetGenImage('asset/icon/hamber_icon.png');

  /// File path: asset/icon/mines_icon.png
  AssetGenImage get minesIcon =>
      const AssetGenImage('asset/icon/mines_icon.png');

  /// File path: asset/icon/notif_icon.png
  AssetGenImage get notifIcon =>
      const AssetGenImage('asset/icon/notif_icon.png');

  /// File path: asset/icon/selected-library.svg
  SvgGenImage get selectedLibrary =>
      const SvgGenImage('asset/icon/selected-library.svg');

  /// File path: asset/icon/selected_fluent_book.svg
  SvgGenImage get selectedFluentBook =>
      const SvgGenImage('asset/icon/selected_fluent_book.svg');

  /// File path: asset/icon/serch_icon.png
  AssetGenImage get serchIcon =>
      const AssetGenImage('asset/icon/serch_icon.png');

  /// File path: asset/icon/unselected_community.svg
  SvgGenImage get unselectedCommunity =>
      const SvgGenImage('asset/icon/unselected_community.svg');

  /// File path: asset/icon/unselected_fluent_book.svg
  SvgGenImage get unselectedFluentBook =>
      const SvgGenImage('asset/icon/unselected_fluent_book.svg');

  /// File path: asset/icon/unselected_library1.svg
  SvgGenImage get unselectedLibrary1 =>
      const SvgGenImage('asset/icon/unselected_library1.svg');

  /// File path: asset/icon/unselected_sale.svg
  SvgGenImage get unselectedSale =>
      const SvgGenImage('asset/icon/unselected_sale.svg');

  /// List of all assets
  List<dynamic> get values => [
        hamberIcon,
        minesIcon,
        notifIcon,
        selectedLibrary,
        selectedFluentBook,
        serchIcon,
        unselectedCommunity,
        unselectedFluentBook,
        unselectedLibrary1,
        unselectedSale
      ];
}

class $AssetImageGen {
  const $AssetImageGen();

  /// File path: asset/image/Group 2908.png
  AssetGenImage get group2908 =>
      const AssetGenImage('asset/image/Group 2908.png');

  /// File path: asset/image/Rectangle 13.png
  AssetGenImage get rectangle13 =>
      const AssetGenImage('asset/image/Rectangle 13.png');

  /// File path: asset/image/Rectangle 2.png
  AssetGenImage get rectangle2 =>
      const AssetGenImage('asset/image/Rectangle 2.png');

  /// File path: asset/image/Rectangle 4.png
  AssetGenImage get rectangle4 =>
      const AssetGenImage('asset/image/Rectangle 4.png');

  /// File path: asset/image/bookLv.png
  AssetGenImage get bookLv => const AssetGenImage('asset/image/bookLv.png');

  /// File path: asset/image/discov.png
  AssetGenImage get discov => const AssetGenImage('asset/image/discov.png');

  /// File path: asset/image/goodCmp.png
  AssetGenImage get goodCmp => const AssetGenImage('asset/image/goodCmp.png');

  /// File path: asset/image/kiteR.png
  AssetGenImage get kiteR => const AssetGenImage('asset/image/kiteR.png');

  /// File path: asset/image/silentSc.png
  AssetGenImage get silentSc => const AssetGenImage('asset/image/silentSc.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        group2908,
        rectangle13,
        rectangle2,
        rectangle4,
        bookLv,
        discov,
        goodCmp,
        kiteR,
        silentSc
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
