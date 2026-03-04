# 👑 Crown UI

A **custom, CSS-like UI framework for Flutter** with design tokens, themes, and reusable components inspired by web development and Kivy. Crown UI provides a lightweight, themeable alternative to Material Design with a focus on flexibility and consistency across your Flutter applications.

---

## 🎯 Overview

Crown UI is a comprehensive Flutter component library designed to simplify UI development with:

- **Design Tokens**: Centralized colors, typography, spacing, and borders
- **Theme System**: Easy theme injection and switching with `CrownTheme`
- **Reusable Components**: Pre-built UI elements (buttons, cards, inputs, navigation, etc.)
- **Base Classes**: Theme-aware widget builders with automatic theme context injection
- **Example App**: Runnable demo showcasing components and usage patterns

---

## ✨ Features

### Core Components
- **Layout Components**: `CrownColumn`, `CrownRow`, `CrownStack`, `CrownContainer`, `CrownPadding`, `CrownSizedBox`, `CrownExpanded`, `CrownSingleChildScrollView`
- **Input Components**: `CrownInput` (text fields), `CrownButton`, `CrownCheckbox`, `CrownSwitch`, `CrownDatePicker`
- **Display Components**: `CrownText`, `CrownIcon`, `CrownIconButton`, `CrownCard`
- **Navigation**: `CrownScaffold`, `CrownDrawer`, `CrownBottomNavigationBar`, `CrownFloatingActionButton`, `CrownFAB`

### Design System
- **Design Tokens**: Colors, typography scales, spacing units, border styles
- **Theme Data**: Comprehensive theme configuration object
- **Theme Provider**: `CrownTheme` widget for theme injection
- **Style Classes**: Pre-configured styles for each component

### Architecture
- **Base Classes**: `CrownStatelessWidget`, `CrownStatefulWidget`, `CrownPage` for automatic theme context
- **Builders**: `CrownBodyBuilder`, `CrownPageBodyBuilder` for flexible layouts
- **Theme-Aware Methods**: `buildWithTheme()` and `buildBody()` automatically provide `CrownThemeData`

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK: >= 3.0.0
- Dart SDK: >= 3.0.0

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  crown_ui: ^0.1.0
```

Then run:

```bash
flutter pub get
```

### Run the Example App

```bash
cd example
flutter pub get
flutter run -d chrome
```

---

## 📖 Usage

### 1. Wrap Your App with `CrownTheme`

```dart
import 'package:crown_ui/crown_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CrownTheme(
      data: CrownThemeData(
        primaryColor: CrownColors.primary,
        secondaryColor: CrownColors.secondary,
        // ... other theme properties
      ),
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}
```

### 2. Use Theme-Aware Widgets

```dart
import 'package:crown_ui/crown_ui.dart';

class HomePage extends CrownStatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    return CrownScaffold(
      body: CrownColumn(
        children: [
          CrownText.heading(
            'Welcome to Crown UI',
            style: theme.headingStyle,
          ),
          CrownButton(
            label: 'Press Me',
            onPressed: () => print('Button pressed!'),
            style: theme.buttonStyle,
          ),
          CrownCard(
            child: CrownText.body('This is a card'),
            style: theme.cardStyle,
          ),
        ],
      ),
    );
  }
}
```

### 3. Access Theme Data Anywhere

```dart
// Inside any widget with context
final theme = CrownTheme.of(context);

// Use theme properties
color: theme.primaryColor,
textStyle: theme.bodyTextStyle,
```

### 4. Using Design Tokens

```dart
import 'package:crown_ui/crown_ui.dart';

// Colors
Color myColor = CrownColors.primary;
Color accent = CrownColors.secondary;

// Typography
TextStyle heading = CrownTypography.heading;
TextStyle body = CrownTypography.body;

// Spacing
double padding = CrownSpacing.medium;
double gap = CrownSpacing.small;

// Borders
BorderRadius radius = CrownBorders.medium;
```

---

## 📁 Project Structure

```
crown_ui/
├── lib/
│   ├── crown_ui.dart                 # Main package export
│   └── src/
│       ├── base/                     # Base classes & builders
│       │   ├── crown_stateless_widget.dart
│       │   ├── crown_stateful_widget.dart
│       │   ├── crown_page.dart
│       │   ├── crown_body_builder.dart
│       │   └── ...
│       ├── components/               # UI components
│       │   ├── crown_button.dart
│       │   ├── crown_card.dart
│       │   ├── crown_input.dart
│       │   ├── crown_text.dart
│       │   ├── crown_scaffold.dart
│       │   └── ... (22+ components)
│       ├── styles/                   # Component styles
│       │   ├── crown_button_style.dart
│       │   ├── crown_card_style.dart
│       │   └── ...
│       ├── theme/                    # Theme system
│       │   ├── crown_theme.dart      # Theme provider
│       │   └── crown_theme_data.dart # Theme configuration
│       └── tokens/                   # Design tokens
│           ├── crown_colors.dart
│           ├── crown_typography.dart
│           ├── crown_spacing.dart
│           └── crown_borders.dart
├── example/                           # Demo app
│   ├── lib/
│   │   ├── main.dart
│   │   ├── pages/                    # Example pages
│   │   └── styles/
│   └── pubspec.yaml
├── test/                              # Unit tests
├── pubspec.yaml                       # Package metadata
├── analysis_options.yaml              # Linter rules
└── README.md                          # This file
```

---

## 🎨 Design Tokens

Crown UI uses design tokens for consistency:

### Colors (`CrownColors`)
- Primary, Secondary, Accent colors
- Grayscale palette
- Status colors (success, error, warning, info)

### Typography (`CrownTypography`)
- Heading styles (h1, h2, h3, etc.)
- Body text styles
- Caption and label styles
- Customizable font families and sizes

### Spacing (`CrownSpacing`)
- Standardized spacing units (xs, sm, md, lg, xl)
- Consistent padding and margin values

### Borders (`CrownBorders`)
- Border radius presets
- Border width standards

---

## 🔧 Architecture & Key Concepts

### Theme Injection
Base classes (`CrownStatelessWidget`, `CrownPage`) automatically inject `CrownThemeData` into their build methods. This eliminates boilerplate and ensures consistent theme access:

```dart
class MyWidget extends CrownStatelessWidget {
  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    // theme is automatically provided
    return Container(color: theme.primaryColor);
  }
}
```

### Method Naming Conventions
To avoid shadowing Flutter's APIs:
- `buildWithTheme()` instead of `build()`
- `buildBody()` instead of `build()` in page bodies
- `showAlert()` instead of `showDialog()`

### Style Classes
Each component has an associated style class that holds visual configuration:

```dart
CrownButtonStyle(
  backgroundColor: Colors.blue,
  textColor: Colors.white,
  borderRadius: 8,
  padding: EdgeInsets.all(16),
)
```

---

## 📚 Example Usage

### Basic Page with Theme

See [example/lib/pages/home_body.dart](example/lib/pages/home_body.dart) for a complete example:

```dart
class HomeBody extends CrownPageBody {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context, CrownThemeData theme) {
    return CrownColumn(
      children: [
        CrownText.heading('Home', style: theme.headingStyle),
        CrownButton(
          label: 'Get Started',
          onPressed: () {},
          style: theme.buttonStyle,
        ),
      ],
    );
  }
}
```

### Switching Themes

```dart
// Create multiple themes
final lightTheme = CrownThemeData(/* ... */);
final darkTheme = CrownThemeData(/* ... */);

// Update state and rebuild
setState(() {
  currentTheme = isDark ? darkTheme : lightTheme;
});
```

---

## 🧪 Testing

Run tests with:

```bash
flutter test
```

Test files are located in the `test/` directory.

---

## 🔍 Code Quality

Analyze code with:

```bash
flutter analyze
```

Follows Dart/Flutter best practices and `flutter_lints` rules.

---

## 🤝 Contributing

### Adding New Components

1. Create the component file in `lib/src/components/`
2. Create a corresponding style file in `lib/src/styles/`
3. Export both from `crown_components.dart` and `crown_styles.dart`
4. Add examples to the example app
5. Run `flutter analyze` and `flutter test`

### Development Workflow

```bash
# Get dependencies
flutter pub get

# Run example app
cd example && flutter run -d chrome

# Run tests
flutter test

# Analyze code
flutter analyze
```

### Guidelines
- Keep base classes aligned with Flutter's `Widget`/`StatelessWidget`/`StatefulWidget` signatures
- Always provide theme-aware variants where applicable
- Document public APIs with dartdoc comments
- Test all new components in the example app

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙋 Support

For questions, issues, or feature requests, please refer to the [PROJECT_OVERVIEW.md](PROJECT_OVERVIEW.md) for additional implementation details and architecture notes.

---

**Built with ❤️ for Flutter developers who want beautiful, consistent UIs.**
