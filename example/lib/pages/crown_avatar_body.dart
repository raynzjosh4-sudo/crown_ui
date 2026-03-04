import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownAvatar example page body
class CrownAvatarBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return Builder(
      builder: (context) {
        return CrownScaffold(
          body: CrownSingleChildScrollView(
            style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
            child: CrownPadding(
              style: CrownPaddingStyle.defaultStyle(theme),
              child: CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  CrownText(
                    'Avatar Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Circular profile images with text and icon support',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Avatar with Text
                  CrownText(
                    'Avatar with Initials',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownRow(
                    style: CrownRowStyle.spaceEvenly(),
                    children: [
                      CrownAvatar.text('JD'),
                      CrownAvatar.text('AB'),
                      CrownAvatar.text('XY'),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Avatar Sizes
                  CrownText(
                    'Avatar Sizes',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownRow(
                    style: CrownRowStyle.spaceEvenly(),
                    children: [
                      CrownAvatar.text(
                        'SM',
                        customStyle: CrownAvatarStyle.small(theme),
                      ),
                      CrownAvatar.text(
                        'MD',
                        customStyle: CrownAvatarStyle.medium(theme),
                      ),
                      CrownAvatar.text(
                        'LG',
                        customStyle: CrownAvatarStyle.large(theme),
                      ),
                      CrownAvatar.text(
                        'XL',
                        customStyle: CrownAvatarStyle.extraLarge(theme),
                      ),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Avatar with Icons
                  CrownText(
                    'Avatar with Icons',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownRow(
                    style: CrownRowStyle.spaceEvenly(),
                    children: [
                      CrownAvatar.icon(Icons.person),
                      CrownAvatar.icon(Icons.work),
                      CrownAvatar.icon(Icons.home),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Semantic Avatars
                  CrownText(
                    'Semantic Styles',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownRow(
                    style: CrownRowStyle.spaceEvenly(),
                    children: [
                      CrownAvatar.text(
                        'OK',
                        customStyle: CrownAvatarStyle.success(theme),
                      ),
                      CrownAvatar.text(
                        'WN',
                        customStyle: CrownAvatarStyle.warning(theme),
                      ),
                      CrownAvatar.text(
                        'ER',
                        customStyle: CrownAvatarStyle.error(theme),
                      ),
                      CrownAvatar.text(
                        'IN',
                        customStyle: CrownAvatarStyle.info(theme),
                      ),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // iOS Style
                  CrownText(
                    'iOS Style Avatar',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownRow(
                    style: CrownRowStyle.spaceEvenly(),
                    children: [
                      CrownAvatar.text(
                        'A',
                        customStyle: CrownAvatarStyle.iosStyle(theme),
                      ),
                      CrownAvatar.icon(
                        Icons.notifications_active,
                        customStyle: CrownAvatarStyle.iosStyle(theme),
                      ),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.xl),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
