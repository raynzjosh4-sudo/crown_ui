import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

/// Component-specific styles
/// Contains all button, card, and input style variants

class ComponentStyles {
  // ============================================================
  // BUTTON STYLES
  // ============================================================

  /// Premium button with bold shadow and large padding
  static CrownButtonStyle premiumButton(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        letterSpacing: 0.5,
      ),
      boxShadow: [
        BoxShadow(
          color: theme.colors.primary.withOpacity(0.4),
          blurRadius: 16,
          offset: const Offset(0, 8),
        ),
      ],
      animationDuration: const Duration(milliseconds: 300),
      scale: 0.92,
    );
  }

  /// Soft button with subtle background and rounded corners
  static CrownButtonStyle softButton(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.accent.withOpacity(0.1),
      foregroundColor: theme.colors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: theme.colors.primary,
      ),
      boxShadow: [
        BoxShadow(
          color: theme.colors.overlay.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  /// Minimalist button with border only, no fill
  static CrownButtonStyle minimalistButton(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: Colors.transparent,
      foregroundColor: theme.colors.primary,
      borderColor: theme.colors.primary,
      borderWidth: 1.5,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: theme.colors.primary,
      ),
    );
  }

  /// Large action button for primary actions
  static CrownButtonStyle largeActionButton(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.success,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      boxShadow: [
        BoxShadow(
          color: theme.colors.success.withOpacity(0.3),
          blurRadius: 12,
          offset: const Offset(0, 6),
        ),
      ],
    );
  }

  // ============================================================
  // CARD STYLES
  // ============================================================

  /// Modern glassmorphism effect with frosted glass look
  static CrownCardStyle glassmorphismCard(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surface.withOpacity(0.7),
      borderColor: theme.colors.textPrimary.withOpacity(0.1),
      borderWidth: 1,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      padding: const EdgeInsets.all(24),
      boxShadow: [
        BoxShadow(
          color: theme.colors.overlay.withOpacity(0.2),
          blurRadius: 20,
          offset: const Offset(0, 10),
        ),
      ],
    );
  }

  /// Card with prominent colored border
  static CrownCardStyle gradientBorderCard(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.background,
      borderColor: theme.colors.primary,
      borderWidth: 2,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      padding: const EdgeInsets.all(20),
      boxShadow: [
        BoxShadow(
          color: theme.colors.primary.withOpacity(0.1),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  /// Compact card for dense layouts with minimal padding
  static CrownCardStyle compactCard(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surfaceLight,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      padding: const EdgeInsets.all(12),
      boxShadow: [
        BoxShadow(
          color: theme.colors.overlay.withOpacity(0.05),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  /// Premium card with generous padding and bold shadow
  static CrownCardStyle statementCard(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surface,
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      padding: const EdgeInsets.all(32),
      boxShadow: [
        BoxShadow(
          color: theme.colors.overlay.withOpacity(0.3),
          blurRadius: 32,
          offset: const Offset(0, 12),
        ),
      ],
    );
  }

  // ============================================================
  // INPUT STYLES
  // ============================================================

  /// Modern input with floating label aesthetic
  static CrownInputStyle floatingLabelInput(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: theme.colors.background,
      borderColor: theme.colors.border,
      focusedBorderColor: theme.colors.primary,
      prefixIconColor: theme.colors.textSecondary,
      suffixIconColor: theme.colors.textSecondary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 1,
      focusedBorderWidth: 2,
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      boxShadow: [
        BoxShadow(
          color: theme.colors.overlay.withOpacity(0.05),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  /// Colorful input with accent color focus state
  static CrownInputStyle colorfulInput(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: theme.colors.primary.withOpacity(0.05),
      borderColor: theme.colors.border,
      focusedBorderColor: theme.colors.accent,
      prefixIconColor: theme.colors.primary,
      suffixIconColor: theme.colors.primary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 1.5,
      focusedBorderWidth: 2.5,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 15,
      ),
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  /// Pill-shaped input for search and casual inputs
  static CrownInputStyle pillInput(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: theme.colors.surfaceLight,
      borderColor: Colors.transparent,
      focusedBorderColor: theme.colors.primary,
      prefixIconColor: theme.colors.textSecondary,
      suffixIconColor: theme.colors.textSecondary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 0,
      focusedBorderWidth: 2,
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 16,
      ),
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 16,
      ),
    );
  }

  static CrownColumnStyle newColumnStyle(CrownThemeData theme) {
    return const CrownColumnStyle(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
    );
  }

  /// Icon box style for component cards - displays component icon with colored background
  static CrownContainerStyle componentIconBox(
      CrownThemeData theme, Color color) {
    return CrownContainerStyle(
      width: 48,
      height: 48,
      backgroundColor: color.withOpacity(0.15),
      borderRadius: 12,
    );
  }

  /// Icon style for component cards - applies color and size
  static CrownIconStyle componentIcon(CrownThemeData theme, Color color) {
    return CrownIconStyle(
      color: color,
      size: 28,
    );
  }

  // ============================================================
  // TEXT STYLES
  // ============================================================

  /// Page header text style - large primary colored text
  static TextStyle pageHeaderText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: theme.colors.primary,
    );
  }

  /// Subtitle text style - body text with secondary color
  static TextStyle subtitleText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: theme.colors.textSecondary,
    );
  }

  /// Component card title text style - primary colored subheading
  static TextStyle cardTitleText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: theme.colors.textPrimary,
    );
  }

  /// Component card description text style - secondary colored caption
  static TextStyle cardDescriptionText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: theme.colors.textSecondary,
    );
  }

  /// Section header text style - primary colored subheading
  static TextStyle sectionHeaderText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: theme.colors.primary,
    );
  }

  /// Feature text style - primary colored caption
  static TextStyle featureText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: theme.colors.textPrimary,
    );
  }

  /// List tile title text style - primary colored body text
  static TextStyle listTileTitleText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: theme.colors.textPrimary,
    );
  }

  /// List tile subtitle text style - secondary colored caption
  static TextStyle listTileSubtitleText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: theme.colors.textSecondary,
    );
  }

  /// Section description text style - secondary colored body text
  static TextStyle sectionDescriptionText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: theme.colors.textSecondary,
    );
  }

  /// List tile accent text style - primary colored body text for emphasis
  static TextStyle listTileAccentText(CrownThemeData theme) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: theme.colors.primary,
    );
  }

  // ============================================================
  // DIVIDER STYLES
  // ============================================================

  /// Standard divider style for separating list items
  static CrownDividerStyle standardDivider(CrownThemeData theme) {
    return CrownDividerStyle.defaultStyle(theme);
  }

  /// Compact divider style for dense layouts with thin height
  static CrownDividerStyle compactDivider(CrownThemeData theme) {
    return CrownDividerStyle(
      color: theme.colors.border,
      height: 0.5,
      thickness: 1,
    );
  }

  // ============================================================
  // SLIDER STYLES
  // ============================================================

  /// Default slider style with standard appearance
  static CrownSliderStyle defaultSlider(CrownThemeData theme) {
    return CrownSliderStyle.defaultStyle(theme);
  }

  /// Minimal slider style with subtle appearance for dense layouts
  static CrownSliderStyle minimalSlider(CrownThemeData theme) {
    return CrownSliderStyle.minimal(theme);
  }

  /// Prominent slider style with bold appearance and always-visible labels
  static CrownSliderStyle prominentSlider(CrownThemeData theme) {
    return CrownSliderStyle.prominent(theme);
  }
}
