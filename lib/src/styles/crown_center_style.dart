import 'package:flutter/material.dart';

/// Style configuration for [CrownCenter].
///
/// Provides customization options for the [CrownCenter] widget.
/// This style class allows you to define alignment and other
/// presentation properties.
class CrownCenterStyle {
  /// The alignment to use for centering the child.
  /// Defaults to [Alignment.center].
  final Alignment alignment;

  const CrownCenterStyle({
    this.alignment = Alignment.center,
  });

  /// Create a copy of this style with modified properties.
  CrownCenterStyle copyWith({
    Alignment? alignment,
  }) {
    return CrownCenterStyle(
      alignment: alignment ?? this.alignment,
    );
  }
}
