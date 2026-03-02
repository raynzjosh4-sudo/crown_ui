import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

void main() {
  runApp(const CrownUIExample());
}

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
        title: 'Crown UI Framework',
        theme: ThemeData.dark(),
        home: HomeScreen(
          onThemeToggle: () => setState(() => isDarkMode = !isDarkMode),
        ),
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
              Text(
                'Crown UI Framework',
                style: theme.typography.displayLarge.copyWith(
                  color: theme.colors.primary,
                ),
              ),
              SizedBox(height: theme.spacing.sm),
              Text(
                'Royal Design System for Flutter',
                style: theme.typography.bodyMedium.copyWith(
                  color: theme.colors.textSecondary,
                ),
              ),
              SizedBox(height: theme.spacing.x2l),
              Text(
                'Color Palette',
                style: theme.typography.headingLarge.copyWith(
                  color: theme.colors.primary,
                ),
              ),
              SizedBox(height: theme.spacing.md),
              _buildColorBox(theme, 'Primary', theme.colors.primary),
              _buildColorBox(theme, 'Accent', theme.colors.accent),
              _buildColorBox(theme, 'Success', theme.colors.success),
              _buildColorBox(theme, 'Error', theme.colors.error),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorBox(CrownThemeData theme, String label, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: theme.spacing.md),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: theme.borders.radiusMedium,
              boxShadow: theme.borders.shadowMedium,
            ),
          ),
          SizedBox(width: theme.spacing.md),
          Text(
            label,
            style: theme.typography.labelLarge.copyWith(
              color: theme.colors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
