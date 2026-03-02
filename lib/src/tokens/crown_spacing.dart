class CrownSpacing {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double x2l;
  final double x3l;

  const CrownSpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.x2l,
    required this.x3l,
  });

  factory CrownSpacing.default_() {
    return const CrownSpacing(
      xs: 4.0,
      sm: 8.0,
      md: 16.0,
      lg: 24.0,
      xl: 32.0,
      x2l: 48.0,
      x3l: 64.0,
    );
  }

  CrownSpacing copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? x2l,
    double? x3l,
  }) {
    return CrownSpacing(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      x2l: x2l ?? this.x2l,
      x3l: x3l ?? this.x3l,
    );
  }
}
