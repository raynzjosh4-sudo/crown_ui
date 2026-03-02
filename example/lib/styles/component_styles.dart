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
}
