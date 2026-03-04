import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import 'pages/home_body.dart';
import 'pages/components_menu_body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CrownTheme(
      data: CrownThemeData.dark(),
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

/// Home page with Home and Components navigation
class HomePage extends CrownStatefulWidget {
  int _currentPageIndex = 0;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context) {
    final theme = CrownTheme.of(context);

    // Show either Home or Components page
    final body =
        _currentPageIndex == 0 ? const HomeBody() : const ComponentsMenuBody();

    return CrownScaffold(
      title: 'Crown UI',
      body: body,
      bottomNavItems: [
        CrownBottomNavigationBarItem(
          icon: Icons.home,
          label: 'Home',
          style: CrownBottomNavigationBarItemStyle.defaultStyle(theme),
        ).buildNavItem(context),
        CrownBottomNavigationBarItem(
          icon: Icons.widgets,
          label: 'Components',
          style: CrownBottomNavigationBarItemStyle.defaultStyle(theme),
        ).buildNavItem(context),
      ],
      currentBottomNavIndex: _currentPageIndex,
      onBottomNavTap: (index) => callSetState(() => _currentPageIndex = index),
    );
  }
}
