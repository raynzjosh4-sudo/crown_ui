import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownPageView example page body
class CrownPageViewBody extends PageBody {
  int _currentPage = 0;

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
                'Page view component for swipeable page navigation',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildPageViewExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageViewExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Page View',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          Container(
            height: 300,
            child: CrownPageView(
              children: [
                _buildPage(Colors.red, 'Page 1'),
                _buildPage(Colors.blue, 'Page 2'),
                _buildPage(Colors.green, 'Page 3'),
                _buildPage(Colors.orange, 'Page 4'),
              ],
              onPageChanged: (index) => _currentPage = index,
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          Center(
            child: CrownText('Page $_currentPage'),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(Color color, String title) {
    return Container(
      color: color,
      child: Center(
        child: CrownText(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
