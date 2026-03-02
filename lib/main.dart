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

class HomeScreen extends StatefulWidget {
  final VoidCallback onThemeToggle;
  const HomeScreen({Key? key, required this.onThemeToggle}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

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
                  CrownText.display('Crown UI', color: theme.colors.primary),
                  SizedBox(height: theme.spacing.sm),
                  CrownText.body('iOS-Inspired Design System', color: theme.colors.textSecondary),
                ])),
                CrownIcon(Icons.lightbulb_outline, size: 32, color: theme.colors.primary, isButton: true, onTap: widget.onThemeToggle),
              ]),
              SizedBox(height: theme.spacing.x2l),
              CrownText.heading('Button Styles', color: theme.colors.primary),
              SizedBox(height: theme.spacing.md),
              CrownButton('Primary Button', onPressed: () => _showMessage('Primary!'), variant: CrownButtonVariant.filled),
              SizedBox(height: theme.spacing.md),
              CrownButton('Success Button', onPressed: () => _showMessage('Success!'), customStyle: CrownButtonStyle.success(theme)),
              SizedBox(height: theme.spacing.md),
              CrownButton('Danger Button', onPressed: () => _showMessage('Danger!'), customStyle: CrownButtonStyle.danger(theme)),
              SizedBox(height: theme.spacing.md),
              CrownButton('Secondary Button', onPressed: () => _showMessage('Secondary!'), customStyle: CrownButtonStyle.secondary(theme)),
              SizedBox(height: theme.spacing.md),
              CrownButton('Outlined Button', onPressed: () => _showMessage('Outlined!'), variant: CrownButtonVariant.outlined),
              SizedBox(height: theme.spacing.x2l),
              CrownText.heading('Input Styles', color: theme.colors.primary),
              SizedBox(height: theme.spacing.md),
              CrownInput(labelText: 'Outlined Input', hintText: 'Default style', prefixIcon: Icons.person, customStyle: CrownInputStyle.outlined(theme)),
              SizedBox(height: theme.spacing.md),
              CrownInput(labelText: 'Filled Input', hintText: 'Filled style', prefixIcon: Icons.email, customStyle: CrownInputStyle.filled(theme)),
              SizedBox(height: theme.spacing.md),
              CrownInput(labelText: 'Underlined Input', hintText: 'Underlined style', customStyle: CrownInputStyle.underlined(theme)),
              SizedBox(height: theme.spacing.x2l),
              CrownText.heading('Card Styles', color: theme.colors.primary),
              SizedBox(height: theme.spacing.md),
              CrownCard(customStyle: CrownCardStyle.elevated(theme), child: Column(children: [CrownText.subheading('Elevated Card', color: theme.colors.primary), SizedBox(height: theme.spacing.sm), CrownText.body('This card has elevation shadow', color: theme.colors.textSecondary)])),
              SizedBox(height: theme.spacing.md),
              CrownCard(customStyle: CrownCardStyle.outlined(theme), child: Column(children: [CrownText.subheading('Outlined Card', color: theme.colors.primary), SizedBox(height: theme.spacing.sm), CrownText.body('This card has a border', color: theme.colors.textSecondary)])),
              SizedBox(height: theme.spacing.md),
              CrownCard(customStyle: CrownCardStyle.filled(theme), child: Column(children: [CrownText.subheading('Filled Card', color: theme.colors.primary), SizedBox(height: theme.spacing.sm), CrownText.body('This card has a filled background', color: theme.colors.textSecondary)])),
              SizedBox(height: theme.spacing.md),
              CrownCard(customStyle: CrownCardStyle.minimal(theme), child: Column(children: [CrownText.subheading('Minimal Card', color: theme.colors.primary), SizedBox(height: theme.spacing.sm), CrownText.body('This card is minimal with no shadow', color: theme.colors.textSecondary)])),
              SizedBox(height: theme.spacing.x3l),
            ],
          ),
        ),
      ),
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), duration: Duration(seconds: 2)));
  }
}
