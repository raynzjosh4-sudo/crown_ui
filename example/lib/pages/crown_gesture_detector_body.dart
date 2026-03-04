import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownGestureDetector example page body
class CrownGestureDetectorBody extends PageBody {
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
                'Gesture detector for handling user interactions',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildGestureDetectorExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGestureDetectorExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Gesture Examples',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownGestureDetector(
            onTap: () => print('Single tap'),
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.primary,
                borderRadius: 12,
                padding: EdgeInsets.all(24),
              ),
              child: Center(
                child: CrownText(
                  'Single Tap',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownGestureDetector(
            onDoubleTap: () => print('Double tap'),
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.success,
                borderRadius: 12,
                padding: EdgeInsets.all(24),
              ),
              child: Center(
                child: CrownText(
                  'Double Tap',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownGestureDetector(
            onLongPress: () => print('Long press'),
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.warning,
                borderRadius: 12,
                padding: EdgeInsets.all(24),
              ),
              child: Center(
                child: CrownText(
                  'Long Press',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
