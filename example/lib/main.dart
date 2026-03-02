import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import 'styles/index.dart';

void main() => runApp(const CrownUIExample());

class CrownUIExample extends StatefulWidget {
  const CrownUIExample({Key? key}) : super(key: key);
  @override
  State<CrownUIExample> createState() => _CrownUIExampleState();
}

class _CrownUIExampleState extends State<CrownUIExample> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return CrownTheme(
      data: isDarkMode ? CrownThemeData.dark() : CrownThemeData.light(),
      child: MaterialApp(
        title: 'Crown UI',
        theme: ThemeData.dark(),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// ============================================================
// EXAMPLE 1: STATELESS WIDGET
// ============================================================

/// Simple stateless widget using CrownStatelessWidget
class HomeScreen extends CrownStatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, CrownThemeData theme) {
    return CrownScaffold(
      title: 'Crown UI Examples',
      currentBottomNavIndex: 0,
      bottomNavItems: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Stateless'),
        BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Stateful'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
      ],
      actions: [
        Padding(
          padding: EdgeInsets.all(theme.spacing.md),
          child: CrownIcon(Icons.lightbulb_outline, size: 24, color: theme.colors.primary),
        ),
      ],
      fab: FloatingActionButton(
        onPressed: () {},
        backgroundColor: theme.colors.primary,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              CrownText.display('Stateless Widget', color: theme.colors.primary),
              SizedBox(height: theme.spacing.md),
              CrownText.body('Simple widgets that do not change', color: theme.colors.textSecondary),
              SizedBox(height: theme.spacing.lg),

              // Code example
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CrownText.subheading('Before (Normal way):', color: theme.colors.primary),
                    SizedBox(height: theme.spacing.sm),
                    _codeBlock(theme, '''class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return Text('Hello');
  }
}'''),
                  ],
                ),
              ),
              SizedBox(height: theme.spacing.md),

              CrownCard(
                customStyle: ComponentStyles.gradientBorderCard(theme),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CrownText.subheading('After (Crown way):', color: theme.colors.primary),
                    SizedBox(height: theme.spacing.sm),
                    _codeBlock(theme, '''class MyWidget extends CrownStatelessWidget {
  @override
  Widget build(BuildContext context, CrownThemeData theme) {
    return CrownText('Hello');
  }
}'''),
                  ],
                ),
              ),
              SizedBox(height: theme.spacing.lg),

              // Benefits
              CrownText.heading('Benefits:', color: theme.colors.primary),
              SizedBox(height: theme.spacing.md),
              _benefitItem(theme, '✓', 'Theme injected automatically'),
              _benefitItem(theme, '✓', 'No need to call CrownTheme.of()'),
              _benefitItem(theme, '✓', 'Cleaner, simpler code'),
              _benefitItem(theme, '✓', 'Consistent widget structure'),
              SizedBox(height: theme.spacing.xl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _codeBlock(CrownThemeData theme, String code) {
    return Container(
      padding: EdgeInsets.all(theme.spacing.md),
      decoration: BoxDecoration(
        color: theme.colors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.border),
      ),
      child: Text(
        code,
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 12,
          color: theme.colors.textSecondary,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _benefitItem(CrownThemeData theme, String icon, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: theme.spacing.sm),
      child: Row(
        children: [
          CrownText.body(icon, color: theme.colors.success),
          SizedBox(width: theme.spacing.md),
          Expanded(child: CrownText.body(text, color: theme.colors.textPrimary)),
        ],
      ),
    );
  }
}

// ============================================================
// EXAMPLE 2: STATEFUL WIDGET
// ============================================================

/// Stateful widget using CrownStatefulWidget
class CounterExample extends CrownStatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends CrownState<CounterExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CrownScaffold(
      title: 'Stateful Example',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CrownText.display('Counter: \', color: theme.colors.primary),
            SizedBox(height: theme.spacing.lg),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CrownButton(
                  'Decrease',
                  onPressed: () => setState(() => counter--),
                  customStyle: ComponentStyles.softButton(theme),
                ),
                SizedBox(width: theme.spacing.md),
                CrownButton(
                  'Increase',
                  onPressed: () => setState(() => counter++),
                  customStyle: ComponentStyles.premiumButton(theme),
                ),
              ],
            ),
            SizedBox(height: theme.spacing.xl),
            CrownButton(
              'Show Message',
              onPressed: _showMessage,
              customStyle: ComponentStyles.largeActionButton(theme),
            ),
            SizedBox(height: theme.spacing.md),
            CrownButton(
              'Show Dialog',
              onPressed: _showDialog,
              customStyle: ComponentStyles.minimalistButton(theme),
            ),
          ],
        ),
      ),
    );
  }

  void _showMessage() {
    showSnackBar('Counter is now: \');
  }

  void _showDialog() {
    showCrownDialog(
      title: 'Welcome',
      message: 'The counter is at \',
      confirmText: 'Great!',
      onConfirm: () => Navigator.pop(context),
    );
  }
}

// ============================================================
// EXAMPLE 3: SIMPLE REUSABLE COMPONENT
// ============================================================

/// Simple card component using CrownStatelessWidget
class StatCard extends CrownStatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const StatCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.compactCard(theme),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(theme.spacing.md),
            decoration: BoxDecoration(
              color: theme.colors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: CrownIcon(icon, color: theme.colors.primary, size: 24),
          ),
          SizedBox(width: theme.spacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CrownText.caption(title, color: theme.colors.textSecondary),
                CrownText.subheading(value, color: theme.colors.textPrimary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
