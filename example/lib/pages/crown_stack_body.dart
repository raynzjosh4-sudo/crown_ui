import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownStack example page body
class CrownStackBody extends PageBody {
  const CrownStackBody();

  @override
  Widget build(CrownThemeData theme) {
    return CrownScaffold(
      body: CrownSingleChildScrollView(
        style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
        child: CrownPadding(
          style: CrownPaddingStyle.defaultStyle(theme),
          child: CrownColumn(
            style: CrownColumnStyle.start(),
            children: [
              // Title
              CrownText(
                'Stack Component',
                style: ComponentStyles.sectionHeaderText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
              ),
              CrownText(
                'Layer widgets on top of each other with flexible positioning',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Example 1: Default Style - Top Left
              CrownText(
                'Default Stack (Top Left)',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownStack(
                    style: CrownStackStyle.defaultStyle(),
                    children: [
                      Container(
                        width: 250,
                        height: 150,
                        decoration: BoxDecoration(
                          color: theme.colors.primary.withOpacity(0.1),
                          border: Border.all(
                            color: theme.colors.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: theme.spacing.md,
                            vertical: theme.spacing.sm,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colors.primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: CrownText(
                            'Label',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Example 2: Center Stack
              CrownText(
                'Center Stack',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownStack.center(
                    children: [
                      Container(
                        width: 250,
                        height: 150,
                        color: theme.colors.success.withOpacity(0.1),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: theme.spacing.lg,
                          vertical: theme.spacing.md,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colors.success,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CrownText(
                          'Centered',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Example 3: Expand Stack
              CrownText(
                'Expand Stack (Full Size)',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: SizedBox(
                    height: 180,
                    child: CrownStack.expand(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                theme.colors.warning.withOpacity(0.2),
                                theme.colors.primary.withOpacity(0.1),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(theme.spacing.sm),
                            decoration: BoxDecoration(
                              color: theme.colors.primary,
                              shape: BoxShape.circle,
                            ),
                            child: CrownIcon(
                              Icons.star,
                              style: CrownIconStyle(
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: CrownText(
                            'Expanded Background',
                            style: TextStyle(
                              color: theme.colors.textPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Example 4: Profile Badge
              CrownText(
                'Real World: Profile with Status Badge',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownStack.center(
                    children: [
                      // Profile circle
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colors.primary.withOpacity(0.1),
                          border: Border.all(
                            color: theme.colors.primary,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: CrownIcon(
                            Icons.person,
                            style: CrownIconStyle(
                              color: theme.colors.primary,
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                      // Status badge
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.colors.success,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Center(
                            child: CrownIcon(
                              Icons.check,
                              style: CrownIconStyle(
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Example 5: Multiple Positioned Elements
              CrownText(
                'Multiple Positioned Elements',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownStack(
                    style: CrownStackStyle.defaultStyle(),
                    children: [
                      Container(
                        width: 250,
                        height: 200,
                        color: theme.colors.border.withOpacity(0.1),
                      ),
                      // Top right corner
                      Positioned(
                        top: 10,
                        right: 10,
                        child: CrownText(
                          'TOP RIGHT',
                          style: TextStyle(
                            color: theme.colors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      // Bottom left corner
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: CrownText(
                          'BOTTOM LEFT',
                          style: TextStyle(
                            color: theme.colors.success,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      // Bottom right corner
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: CrownText(
                          'BOTTOM RIGHT',
                          style: TextStyle(
                            color: theme.colors.warning,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      // Center
                      Center(
                        child: CrownText(
                          'CENTER',
                          style: TextStyle(
                            color: theme.colors.textPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
