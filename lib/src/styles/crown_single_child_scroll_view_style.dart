import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownSingleChildScrollViewStyle {
  final Axis scrollDirection;
  final bool reverse;
  final ScrollPhysics? physics;
  final EdgeInsets? padding;

  const CrownSingleChildScrollViewStyle({
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.padding,
  });

  factory CrownSingleChildScrollViewStyle.defaultStyle(CrownThemeData? theme) {
    return const CrownSingleChildScrollViewStyle(
      scrollDirection: Axis.vertical,
      reverse: false,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
    );
  }

  factory CrownSingleChildScrollViewStyle.vertical() {
    return const CrownSingleChildScrollViewStyle(
      scrollDirection: Axis.vertical,
      reverse: false,
      physics: BouncingScrollPhysics(),
    );
  }

  factory CrownSingleChildScrollViewStyle.horizontal() {
    return const CrownSingleChildScrollViewStyle(
      scrollDirection: Axis.horizontal,
      reverse: false,
      physics: BouncingScrollPhysics(),
    );
  }

  CrownSingleChildScrollViewStyle copyWith({
    Axis? scrollDirection,
    bool? reverse,
    ScrollPhysics? physics,
    EdgeInsets? padding,
  }) {
    return CrownSingleChildScrollViewStyle(
      scrollDirection: scrollDirection ?? this.scrollDirection,
      reverse: reverse ?? this.reverse,
      physics: physics ?? this.physics,
      padding: padding ?? this.padding,
    );
  }
}
