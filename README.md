# Crown UI Framework

A custom, **CSS-like UI framework for Flutter** that implements the **Royal Design System**. This package provides design tokens, a centralized theme system, and custom components that separate structure from visual presentation.

## 🎨 Features

- **Design Tokens**: Centralized colors, typography, spacing, and borders
- **CSS-like Styling**: Declarative style objects instead of deeply nested widgets
- **Theme System**: Global theme management via `CrownTheme` InheritedWidget
- **Reusable Components**: Custom widgets with consistent styling
- **Package-Based**: Self-contained and reusable across projects
- **Flexible**: Override styles at any level (global, theme, or component)
- **Inspired by Kivy & Web CSS**: Separation of concerns between structure and style

## ✨ Philosophy

The Crown UI Framework separates **structure** from **style**:

- **Structure**: What a component is and how it behaves
- **Style**: How a component looks (colors, padding, borders, shadows, etc.)

This is inspired by CSS and Kivy''s declarative approach, making UIs easier to read, maintain, and modify globally.

## 📖 Getting Started

See the `example/` folder for a complete working application.

## 🛣️ Roadmap

### Phase 1: Foundation ✅
- [x] Design tokens (colors, typography, spacing, borders)
- [x] Theme system (CrownTheme, CrownThemeData)

### Phase 2: Core Components 🔄
- [ ] CrownText - Custom text widget
- [ ] CrownButton - Customizable button
- [ ] CrownInput - Text input field
- [ ] CrownCard - Card container
- [ ] CrownContainer - Styled container

### Phase 3: Advanced Components 📋
- [ ] CrownScaffold - App layout
- [ ] CrownVideoPlayer - Video player with custom controls
- [ ] CrownProgressBar - Custom progress indicator
- [ ] CrownSlider - Custom slider
- [ ] CrownDialog / CrownModal - Custom dialogs

### Phase 4: Polish & Publishing 📦
- [ ] Widget extensions
- [ ] Comprehensive documentation
- [ ] Unit tests
- [ ] Publish to pub.dev

## 📄 License

MIT License
