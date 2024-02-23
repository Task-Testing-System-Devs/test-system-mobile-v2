import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as p;

enum _ImageAssetType {
  rasterImage,
  svg,
}

class UniversalAssetImage extends StatelessWidget {
  UniversalAssetImage(
    this.assetPath, {
    this.fit,
    this.alignment,
    this.width,
    this.height,
    Color? fillWithColor,
    ColorFilter? colorFilter,
    this.errorBuilder,
    super.key,
  })  : assert(fillWithColor == null || colorFilter == null),
        colorFilter = colorFilter ??
            (fillWithColor != null
                ? ColorFilter.mode(fillWithColor, BlendMode.srcIn)
                : null),
        _type = switch (p.extension(assetPath)) {
          '.svg' => _ImageAssetType.svg,
          _ => _ImageAssetType.rasterImage,
        };

  final String assetPath;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;
  final ColorFilter? colorFilter;
  final Widget Function(BuildContext, [Object? error, StackTrace? stackTrace])?
      errorBuilder;

  final _ImageAssetType _type;

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _ImageAssetType.rasterImage:
        return Image.asset(
          assetPath,
          fit: boxFit,
          alignment: align,
          width: width,
          height: height,
          errorBuilder: errorBuilder,
        );
      case _ImageAssetType.svg:
        return SvgPicture.asset(
          assetPath,
          fit: boxFit,
          alignment: align,
          width: width,
          height: height,
          colorFilter: colorFilter,
          placeholderBuilder: errorBuilder,
        );
    }
  }

  BoxFit get boxFit => fit ?? BoxFit.contain;

  AlignmentGeometry get align => alignment ?? Alignment.center;
}
