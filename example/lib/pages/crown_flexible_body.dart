import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownFlexible example page body
class CrownFlexibleBody extends PageBody {
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
              CrownText(
                'Flexible widget for responsive layouts',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildFlexibleExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFlexibleExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Flexible Layout',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownRow(
            style: CrownRowStyle.spaceBetween(),
            children: [
              CrownFlexible(
                flex: 1,
                child: CrownContainer(
                  style: CrownContainerStyle(
                    backgroundColor: theme.colors.primary,
                    borderRadius: 8,
                    padding: EdgeInsets.all(16),
                  ),
                  child: Center(
                    child: CrownText('Flex 1',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(width: 12),
              CrownFlexible(
                flex: 2,
                child: CrownContainer(
                  style: CrownContainerStyle(
                    backgroundColor: theme.colors.success,
                    borderRadius: 8,
                    padding: EdgeInsets.all(16),
                  ),
                  child: Center(
                    child: CrownText('Flex 2',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(width: 12),
              CrownFlexible(
                flex: 1,
                child: CrownContainer(
                  style: CrownContainerStyle(
                    backgroundColor: theme.colors.warning,
                    borderRadius: 8,
                    padding: EdgeInsets.all(16),
                  ),
                  child: Center(
                    child: CrownText('Flex 1',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
