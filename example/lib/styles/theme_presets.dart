import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

/// Reusable theme design tokens
/// Spacing, border radius, shadow, and animation presets

class ThemePresets {
  // ============================================================
  // SPACING PRESETS
  // ============================================================
  
  /// Extra compact spacing (4px) - minimal breathing room
  /// Use for: Dense lists, compact layouts, tight spacing
  static const EdgeInsets spacingXs = EdgeInsets.all(4);

  /// Compact spacing (8px) - tight but readable
  /// Use for: Between small elements, tight cards
  static const EdgeInsets spacingCompact = EdgeInsets.all(8);

  /// Standard spacing (16px) - default comfortable spacing
  /// Use for: Most components, standard padding, general layouts
  static const EdgeInsets spacingStandard = EdgeInsets.all(16);

  /// Generous spacing (24px) - open and breathable
  /// Use for: Large sections, spacious layouts, premium feel
  static const EdgeInsets spacingGenerous = EdgeInsets.all(24);

  /// Premium spacing (32px) - luxurious and open
  /// Use for: Hero sections, statement cards, high-end designs
  static const EdgeInsets spacingPremium = EdgeInsets.all(32);

  // ============================================================
  // BORDER RADIUS PRESETS
  // ============================================================

  /// Sharp corners (4px) - minimal design, technical feel
  /// Use for: Minimalist design, technical apps, data tables
  static const BorderRadius borderSharp = BorderRadius.all(Radius.circular(4));

  /// Rounded corners (12px) - modern, balanced
  /// Use for: Most components, standard modern design, buttons, cards
  static const BorderRadius borderRounded = BorderRadius.all(Radius.circular(12));

  /// Extra rounded (20px) - friendly, soft, approachable
  /// Use for: Consumer apps, friendly design, call-to-action buttons
  static const BorderRadius borderExtraRounded = BorderRadius.all(Radius.circular(20));

  /// Pill-shaped (32px) - maximum roundness, playful
  /// Use for: Search bars, pill buttons, badges, chips
  static const BorderRadius borderPill = BorderRadius.all(Radius.circular(32));

  // ============================================================
  // SHADOW PRESETS
  // ============================================================

  /// Subtle shadow (8px blur, 0.08 opacity) - barely noticeable
  /// Use for: Minimal elevation, subtle depth, flat designs
  static List<BoxShadow> shadowSubtle(CrownThemeData theme) {
    return [
      BoxShadow(
        color: theme.colors.overlay.withOpacity(0.08),
        blurRadius: 8,
        offset: const Offset(0, 2),
      ),
    ];
  }

  /// Soft shadow (8px blur, 0.1 opacity) - gentle depth
  /// Use for: Standard elevation, default cards, inputs
  static List<BoxShadow> shadowSoft(CrownThemeData theme) {
    return [
      BoxShadow(
        color: theme.colors.overlay.withOpacity(0.1),
        blurRadius: 8,
        offset: const Offset(0, 4),
      ),
    ];
  }

  /// Medium shadow (16px blur, 0.15 opacity) - noticeable elevation
  /// Use for: Raised cards, modals, important elements
  static List<BoxShadow> shadowMedium(CrownThemeData theme) {
    return [
      BoxShadow(
        color: theme.colors.overlay.withOpacity(0.15),
        blurRadius: 16,
        offset: const Offset(0, 8),
      ),
    ];
  }

  /// Bold shadow (24px blur, 0.25 opacity) - strong emphasis
  /// Use for: Floating action buttons, dropdowns, modals, emphasis
  static List<BoxShadow> shadowBold(CrownThemeData theme) {
    return [
      BoxShadow(
        color: theme.colors.overlay.withOpacity(0.25),
        blurRadius: 24,
        offset: const Offset(0, 12),
      ),
    ];
  }

  /// Neon glow shadow (primary color with no offset) - vibrant effect
  /// Use for: Highlights, accent elements, glowing effects
  static List<BoxShadow> shadowNeonGlow(CrownThemeData theme) {
    return [
      BoxShadow(
        color: theme.colors.primary.withOpacity(0.3),
        blurRadius: 20,
        offset: const Offset(0, 0),
      ),
    ];
  }

  // ============================================================
  // ANIMATION/DURATION PRESETS
  // ============================================================

  /// Quick animation (100ms) - snappy, responsive feel
  /// Use for: Hover states, quick transitions, interactive feedback
  static const Duration durationQuick = Duration(milliseconds: 100);

  /// Standard animation (200ms) - smooth, natural transitions
  /// Use for: Most animations, button presses, state changes
  static const Duration durationStandard = Duration(milliseconds: 200);

  /// Slow animation (300ms) - elegant, premium feel
  /// Use for: Page transitions, modal opens, important animations
  static const Duration durationSlow = Duration(milliseconds: 300);

  /// Deliberate animation (500ms) - dramatic, attention-grabbing
  /// Use for: Splash screens, hero animations, key moments
  static const Duration durationDeliberate = Duration(milliseconds: 500);

  // ============================================================
  // SCALE PRESETS FOR INTERACTIONS
  // ============================================================

  /// Subtle scale (0.98) - barely noticeable shrink on press
  /// Use for: Delicate, refined interactions
  static const double scaleSubtle = 0.98;

  /// Medium scale (0.95) - noticeable but not aggressive
  /// Use for: Standard buttons, most interactive elements
  static const double scaleMedium = 0.95;

  /// Bold scale (0.90) - dramatic, obvious press effect
  /// Use for: Large buttons, action buttons, emphasis
  static const double scaleBold = 0.90;
}
