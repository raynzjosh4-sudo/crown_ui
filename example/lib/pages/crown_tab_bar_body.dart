import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownTabBar example page body
class CrownTabBarBody extends PageBody {
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
                'Navigation tabs component for switching between views',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildBasicTabs(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildScrollableTabs(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildChromeStyleTabs(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildVsCodeStyleTabs(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildWindowsStyleTabs(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildMinimalStyleTabs(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBasicTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 3,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('Basic Tabs (Default)',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              tabs: [
                Tab(text: 'Home', icon: Icon(Icons.home)),
                Tab(text: 'Search', icon: Icon(Icons.search)),
                Tab(text: 'Profile', icon: Icon(Icons.person)),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 150,
              child: CrownTabBarView(
                children: [
                  Center(child: CrownText('Home Tab Content')),
                  Center(child: CrownText('Search Tab Content')),
                  Center(child: CrownText('Profile Tab Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScrollableTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 5,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('Scrollable Tabs',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              tabs: [
                Tab(text: 'Tab One'),
                Tab(text: 'Tab Two'),
                Tab(text: 'Tab Three'),
                Tab(text: 'Tab Four'),
                Tab(text: 'Tab Five'),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 100,
              child: CrownTabBarView(
                children: List.generate(
                  5,
                  (index) => Center(
                    child: CrownText('Tab ${index + 1} Content'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChromeStyleTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 3,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('Chrome Style',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              style: CrownTabBarStyle.chrome(theme),
              tabs: [
                Tab(text: 'Home', icon: Icon(Icons.home)),
                Tab(text: 'Search', icon: Icon(Icons.search)),
                Tab(text: 'Settings', icon: Icon(Icons.settings)),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 150,
              child: CrownTabBarView(
                children: [
                  Center(child: CrownText('Chrome Home Content')),
                  Center(child: CrownText('Chrome Search Content')),
                  Center(child: CrownText('Chrome Settings Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVsCodeStyleTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 3,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('VS Code Style',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              style: CrownTabBarStyle.vsCode(theme),
              tabs: [
                Tab(text: 'Editor', icon: Icon(Icons.edit)),
                Tab(text: 'Terminal', icon: Icon(Icons.terminal)),
                Tab(text: 'Debug', icon: Icon(Icons.bug_report)),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 150,
              child: CrownTabBarView(
                children: [
                  Center(child: CrownText('VS Code Editor Content')),
                  Center(child: CrownText('VS Code Terminal Content')),
                  Center(child: CrownText('VS Code Debug Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWindowsStyleTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 3,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('Windows Style',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              style: CrownTabBarStyle.windows(theme),
              tabs: [
                Tab(text: 'File', icon: Icon(Icons.folder)),
                Tab(text: 'View', icon: Icon(Icons.visibility)),
                Tab(text: 'Help', icon: Icon(Icons.help)),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 150,
              child: CrownTabBarView(
                children: [
                  Center(child: CrownText('Windows File Content')),
                  Center(child: CrownText('Windows View Content')),
                  Center(child: CrownText('Windows Help Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMinimalStyleTabs(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: DefaultTabController(
        length: 3,
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText('Minimal Style',
                style: ComponentStyles.sectionHeaderText(theme)),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownTabBar(
              style: CrownTabBarStyle.minimal(theme),
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            Container(
              height: 150,
              child: CrownTabBarView(
                children: [
                  Center(child: CrownText('Minimal Tab 1 Content')),
                  Center(child: CrownText('Minimal Tab 2 Content')),
                  Center(child: CrownText('Minimal Tab 3 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
