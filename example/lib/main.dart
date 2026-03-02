import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

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
        home: HomeScreen(onThemeToggle: () => setState(() => isDarkMode = !isDarkMode)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback onThemeToggle;
  const HomeScreen({Key? key, required this.onThemeToggle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(theme.spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: theme.spacing.xl),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Crown UI', style: theme.typography.displayLarge.copyWith(color: theme.colors.primary)),
                  SizedBox(height: theme.spacing.sm),
                  Text('Royal Design System', style: theme.typography.bodyMedium.copyWith(color: theme.colors.textSecondary)),
                ])),
                Container(decoration: BoxDecoration(color: theme.colors.surface, borderRadius: theme.borders.radiusMedium, boxShadow: theme.borders.shadowMedium), child: Material(color: Colors.transparent, child: InkWell(onTap: onThemeToggle, borderRadius: theme.borders.radiusMedium, child: Padding(padding: EdgeInsets.all(theme.spacing.md), child: Icon(Icons.lightbulb_outline, color: theme.colors.primary, size: 24))))),
              ]),
              SizedBox(height: theme.spacing.x2l),
              Text('Colors', style: theme.typography.headingLarge.copyWith(color: theme.colors.primary)),
              SizedBox(height: theme.spacing.md),
              _ColorBox(label: 'Primary', color: theme.colors.primary, theme: theme),
              _ColorBox(label: 'Accent', color: theme.colors.accent, theme: theme),
              _ColorBox(label: 'Success', color: theme.colors.success, theme: theme),
              _ColorBox(label: 'Error', color: theme.colors.error, theme: theme),
              SizedBox(height: theme.spacing.x3l),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final String label;
  final Color color;
  final CrownThemeData theme;
  const _ColorBox({required this.label, required this.color, required this.theme});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: theme.spacing.md),
      child: Row(children: [
        Container(width: 60, height: 60, decoration: BoxDecoration(color: color, borderRadius: theme.borders.radiusMedium, boxShadow: theme.borders.shadowMedium)),
        SizedBox(width: theme.spacing.md),
        Text(label, style: theme.typography.labelLarge.copyWith(color: theme.colors.textPrimary)),
      ]),
    );
  }
}
