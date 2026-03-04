import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';
import 'list_tile_body.dart';
import 'list_view_body.dart';
import 'grid_view_body.dart';
import 'styles_body.dart';
import 'crown_divider_body.dart';
import 'crown_stepper_body.dart';
import 'crown_slider_body.dart';
import 'crown_radio_body.dart';
import 'crown_stack_body.dart';
import 'crown_dropdown_body.dart';
import 'crown_expansion_tile_body.dart';
import 'crown_alert_dialog_body.dart';
import 'crown_bottom_sheet_body.dart';
import 'crown_progress_bar_body.dart';
import 'crown_spinner_body.dart';
import 'crown_refresh_indicator_body.dart';
import 'crown_image_body.dart';
import 'crown_avatar_body.dart';
import 'crown_image_icon_body.dart';
import 'crown_chip_body.dart';
import 'crown_badge_body.dart';
import 'crown_input_chip_body.dart';
import 'crown_filter_chip_body.dart';
import 'crown_choice_chip_body.dart';
import 'crown_text_form_field_body.dart';
import 'crown_tab_bar_body.dart';
import 'crown_align_body.dart';
import 'crown_flexible_body.dart';
import 'crown_vertical_divider_body.dart';
import 'crown_tooltip_body.dart';
import 'crown_help_text_body.dart';
import 'crown_gesture_detector_body.dart';
import 'crown_ink_well_body.dart';
import 'crown_page_view_body.dart';
import 'crown_visibility_body.dart';
import 'crown_aspect_ratio_body.dart';

class _ComponentItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final List<String> features;

  _ComponentItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.features,
  });

  bool matchesQuery(String query) {
    return title.toLowerCase().contains(query.toLowerCase()) ||
        description.toLowerCase().contains(query.toLowerCase()) ||
        features.any((f) => f.toLowerCase().contains(query.toLowerCase()));
  }
}

/// Components showcase page - displays all available Crown UI components
class ComponentsMenuBody extends StatefulWidget {
  const ComponentsMenuBody({Key? key}) : super(key: key);

  @override
  State<ComponentsMenuBody> createState() => _ComponentsMenuBodyState();
}

class _ComponentsMenuBodyState extends State<ComponentsMenuBody> {
  late TextEditingController _searchController;
  List<_ComponentItem> _allComponents = [];
  List<_ComponentItem> _filteredComponents = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(_filterComponents);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _initializeComponents(CrownThemeData theme) {
    _allComponents = [
      _ComponentItem(
        title: 'List Tile',
        description: 'Single list item component with flexible layout',
        icon: Icons.list,
        color: theme.colors.primary,
        features: [
          'Leading widget support',
          'Customizable title & subtitle',
          'Trailing action widget',
          'Multiple style variants',
          'Touch feedback'
        ],
      ),
      _ComponentItem(
        title: 'List View',
        description:
            'Flexible scrollable list component for displaying collections',
        icon: Icons.view_list,
        color: theme.colors.success,
        features: [
          'Static or dynamic children',
          'Builder pattern support',
          'Customizable padding',
          'Smooth scrolling',
          'Lazy loading ready'
        ],
      ),
      _ComponentItem(
        title: 'Grid View',
        description: 'Flexible grid layout component for grid-based layouts',
        icon: Icons.grid_3x3,
        color: theme.colors.warning,
        features: [
          'Responsive grid layouts',
          'Configurable columns',
          'Custom spacing control',
          'Dynamic sizing',
          'Perfect alignment'
        ],
      ),
      _ComponentItem(
        title: 'Text',
        description: 'Flexible text widget with predefined typography styles',
        icon: Icons.text_fields,
        color: Color(0xFF63B5E6),
        features: [
          'Display, heading, body styles',
          'Semantic typography',
          'Custom color support',
          'Overflow handling',
          'Text styling variants'
        ],
      ),
      _ComponentItem(
        title: 'Button',
        description: 'Customizable button component with multiple styles',
        icon: Icons.touch_app,
        color: Color(0xFFFF6B6B),
        features: [
          'Multiple button variants',
          'Loading states',
          'Disabled state support',
          'Custom styling',
          'Icon integration'
        ],
      ),
      _ComponentItem(
        title: 'Divider',
        description: 'Visual separator component for organizing content',
        icon: Icons.remove,
        color: Color(0xFF9B59B6),
        features: [
          'Flexible height control',
          'Customizable colors',
          'Multiple style variants',
          'Works in any layout',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Stepper',
        description: 'Multi-step form and progress tracking component',
        icon: Icons.timeline,
        color: Color(0xFF3498DB),
        features: [
          'Vertical & horizontal layouts',
          'Step navigation controls',
          'Customizable step content',
          'Progress indication',
          'Flexible step management'
        ],
      ),
      _ComponentItem(
        title: 'Radio',
        description: 'Single selection control for radio buttons',
        icon: Icons.radio_button_checked,
        color: Color(0xFF7C3AED),
        features: [
          'Single selection control',
          'Customizable sizes',
          'Multiple style variants',
          'Theme-aware styling',
          'Touch feedback'
        ],
      ),
      _ComponentItem(
        title: 'Slider',
        description: 'Interactive range control for selecting values',
        icon: Icons.tune,
        color: Color(0xFF2ECC71),
        features: [
          'Customizable range selection',
          'Multiple style variants',
          'Discrete step divisions',
          'Value labels and display',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Dropdown',
        description: 'Flexible dropdown selector with multiple styles',
        icon: Icons.arrow_drop_down,
        color: Color(0xFF1ABC9C),
        features: [
          'Multiple dropdown variants',
          'Custom styling options',
          'Generic type support',
          'Hint text support',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Stack',
        description:
            'Layer widgets on top of each other with flexible positioning',
        icon: Icons.layers,
        color: Color(0xFFF39C12),
        features: [
          'Layer widgets with positioning',
          'Flexible alignment options',
          'StackFit for content sizing',
          'Positioned widget support',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Expansion Tile',
        description: 'Interactive collapsible sections for organizing content',
        icon: Icons.expand_more,
        color: Color(0xFF16A34A),
        features: [
          'Smooth expand/collapse animation',
          'Multiple style variants',
          'Customizable content',
          'Theme-aware styling',
          'State management'
        ],
      ),
      _ComponentItem(
        title: 'Alert Dialog',
        description: 'Modal dialogs for user interactions and confirmations',
        icon: Icons.alarm_outlined,
        color: Color(0xFF0EA5E9),
        features: [
          'Multiple style variants',
          'Customizable actions',
          'Theme-aware styling',
          'Success/Error styles',
          'Dismissible options'
        ],
      ),
      _ComponentItem(
        title: 'Bottom Sheet',
        description: 'Modal sheets that slide up from the bottom of the screen',
        icon: Icons.dashboard_customize_outlined,
        color: Color(0xFFFCA5D0),
        features: [
          'Multiple style variants',
          'Drag handle support',
          'Customizable content',
          'Theme-aware styling',
          'Smooth animations'
        ],
      ),
      _ComponentItem(
        title: 'Progress Bar',
        description: 'Linear progress indicators for showing task progress',
        icon: Icons.linear_scale,
        color: Color(0xFF6B7280),
        features: [
          'Determinate progress support',
          'Indeterminate modes',
          'Multiple style variants',
          'Customizable height',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Spinner',
        description: 'Circular progress indicators for loading states',
        icon: Icons.refresh,
        color: Color(0xFF8B5CF6),
        features: [
          'Determinate progress support',
          'Indeterminate modes',
          'Multiple size options',
          'Customizable colors',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Refresh Indicator',
        description: 'Pull-to-refresh pattern for content updates',
        icon: Icons.cloud_download_outlined,
        color: Color(0xFF0EA5E9),
        features: [
          'Pull to refresh pattern',
          'Customizable displacement',
          'Multiple style variants',
          'Smooth animations',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Image',
        description: 'Themed image display with loading and error states',
        icon: Icons.image_outlined,
        color: Color(0xFFEC4899),
        features: [
          'Multiple aspect ratios',
          'Loading indicators',
          'Error handling',
          'Border radius variants',
          'iOS-style styling'
        ],
      ),
      _ComponentItem(
        title: 'Avatar',
        description: 'Circular profile images with text and icon support',
        icon: Icons.account_circle_outlined,
        color: Color(0xFF10B981),
        features: [
          'Text initials support',
          'Icon support',
          'Image backgrounds',
          'Multiple sizes',
          'Semantic color variants'
        ],
      ),
      _ComponentItem(
        title: 'Image Icon',
        description: 'Display images as icons with theme styling',
        icon: Icons.image_search_outlined,
        color: Color(0xFFF59E0B),
        features: [
          'Multiple icon sizes',
          'Semantic color variants',
          'Custom colors',
          'Theme integration',
          'iOS styling'
        ],
      ),
      _ComponentItem(
        title: 'Chip',
        description: 'Simple chips with optional delete functionality',
        icon: Icons.label_outlined,
        color: Color(0xFF8B5CF6),
        features: [
          'Default, filled, and outlined styles',
          'Semantic color variants',
          'Delete icon support',
          'Icon and avatar support',
          'Compact variant'
        ],
      ),
      _ComponentItem(
        title: 'Badge',
        description: 'Notification badges and indicators',
        icon: Icons.notifications_active_outlined,
        color: Color(0xFFDC2626),
        features: [
          'Count badges (with 99+ overflow)',
          'Dot indicators',
          'Semantic color variants',
          'Customizable alignment',
          'Small and large sizes'
        ],
      ),
      _ComponentItem(
        title: 'Input Chip',
        description: 'Chips for input fields with delete and selection',
        icon: Icons.layers_outlined,
        color: Color(0xFF06B6D4),
        features: [
          'Selection support',
          'Delete functionality',
          'Multiple style variants',
          'Filled and outlined modes',
          'Icon and avatar support'
        ],
      ),
      _ComponentItem(
        title: 'Filter Chip',
        description: 'Chips for filtering with toggle states',
        icon: Icons.filter_list_outlined,
        color: Color(0xFF14B8A6),
        features: [
          'Toggle selection state',
          'Selected/unselected styling',
          'Filled and outlined variants',
          'Elevated state support',
          'Theme color integration'
        ],
      ),
      _ComponentItem(
        title: 'Choice Chip',
        description: 'Chips for single selection within a group',
        icon: Icons.check_circle_outline,
        color: Color(0xFF10B981),
        features: [
          'Single selection mode',
          'Multiple style variants',
          'Selected indicator styling',
          'Semantic color support',
          'Icon and avatar integration'
        ],
      ),
      _ComponentItem(
        title: 'TextFormField',
        description: 'Styled form input field with validation',
        icon: Icons.text_fields,
        color: Color(0xFFF59E0B),
        features: [
          'Input validation support',
          'Helper and error text',
          'Prefix and suffix icons',
          'Multiple input types',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'TabBar',
        description: 'Navigation tabs for switching between views',
        icon: Icons.tab,
        color: Color(0xFF06B6D4),
        features: [
          'Horizontal tab navigation',
          'Scrollable tab support',
          'Icon and text tabs',
          'Custom indicators',
          'Theme-aware styling'
        ],
      ),
      _ComponentItem(
        title: 'Align',
        description: 'Align widgets to specific positions',
        icon: Icons.align_vertical_center,
        color: Color(0xFF8B5CF6),
        features: [
          'All alignment positions',
          'Size factors support',
          'Flexible positioning',
          'Component wrapping',
          'Responsive layouts'
        ],
      ),
      _ComponentItem(
        title: 'Flexible',
        description: 'Flexible widget for responsive layouts',
        icon: Icons.settings_suggest,
        color: Color(0xFF3B82F6),
        features: [
          'Flex factor support',
          'Responsive flexibility',
          'Fit modes (loose/tight)',
          'Layout control',
          'Space distribution'
        ],
      ),
      _ComponentItem(
        title: 'VerticalDivider',
        description: 'Vertical separator for organizing content',
        icon: Icons.more_vert,
        color: Color(0xFF6B7280),
        features: [
          'Customizable thickness',
          'Color support',
          'Indent options',
          'Responsive sizing',
          'Theme integration'
        ],
      ),
      _ComponentItem(
        title: 'Tooltip',
        description: 'Helpful information on hover or long press',
        icon: Icons.help_outline,
        color: Color(0xFF10B981),
        features: [
          'Custom messages',
          'Styling options',
          'Show/hide triggers',
          'Duration control',
          'Position awareness'
        ],
      ),
      _ComponentItem(
        title: 'HelpText',
        description: 'Helper text for form fields and hints',
        icon: Icons.info_outline,
        color: Color(0xFF0EA5E9),
        features: [
          'Icon support',
          'Color variants',
          'Flexible content',
          'Theme-aware styling',
          'Multiple line support'
        ],
      ),
      _ComponentItem(
        title: 'GestureDetector',
        description: 'Comprehensive gesture recognition',
        icon: Icons.touch_app,
        color: Color(0xFFEC4899),
        features: [
          'Tap recognition',
          'Long press support',
          'Double tap detection',
          'Pan gestures',
          'Custom gesture handling'
        ],
      ),
      _ComponentItem(
        title: 'InkWell',
        description: 'Material ripple effects on interaction',
        icon: Icons.opacity,
        color: Color(0xFFF59E0B),
        features: [
          'Ripple effects',
          'Customizable colors',
          'Border radius support',
          'Splash animation',
          'Touch feedback'
        ],
      ),
      _ComponentItem(
        title: 'PageView',
        description: 'Swipeable page navigation',
        icon: Icons.pages,
        color: Color(0xFF8B5CF6),
        features: [
          'Horizontal swiping',
          'Page change callbacks',
          'Physics control',
          'Multiple page support',
          'Smooth transitions'
        ],
      ),
      _ComponentItem(
        title: 'Visibility',
        description: 'Control widget visibility',
        icon: Icons.visibility_off_outlined,
        color: Color(0xFF14B8A6),
        features: [
          'Show/hide control',
          'Replacement widget support',
          'State maintenance',
          'Animation support',
          'Semantic control'
        ],
      ),
      _ComponentItem(
        title: 'AspectRatio',
        description: 'Maintain consistent aspect ratios',
        icon: Icons.aspect_ratio,
        color: Color(0xFF06B6D4),
        features: [
          'Custom aspect ratios',
          'Responsive sizing',
          'Media display support',
          'Flexible content',
          'Proportion maintenance'
        ],
      ),
    ];

    _filteredComponents = _allComponents;
  }

  void _filterComponents() {
    final query = _searchController.text;
    setState(() {
      if (query.isEmpty) {
        _filteredComponents = _allComponents;
      } else {
        _filteredComponents = _allComponents
            .where((component) => component.matchesQuery(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    if (_allComponents.isEmpty) {
      _initializeComponents(theme);
    }

    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            // Header
            CrownText(
              'Components',
              style: ComponentStyles.pageHeaderText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),
            CrownText(
              'Explore our collection of well-designed, reusable UI components',
              style: ComponentStyles.subtitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Search Bar
            CrownTextFormField(
              controller: _searchController,
              style: CrownTextFormFieldStyle.defaultStyle(theme),
              onSaved: (value) => _searchController.text = value ?? '',
              onChanged: (value) => _filterComponents(),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Components count
            CrownText(
              'Found ${_filteredComponents.length} component${_filteredComponents.length != 1 ? 's' : ''}',
              style: ComponentStyles.subtitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),

            // Components list
            if (_filteredComponents.isEmpty)
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownCenter(
                  child: CrownColumn(
                    style: CrownColumnStyle.center(),
                    children: [
                      CrownIcon(
                        Icons.search_off,
                        style: CrownIconStyle(
                          color: theme.colors.textSecondary,
                          size: 48,
                        ),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownText(
                        'No components found',
                        style: ComponentStyles.sectionHeaderText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                      ),
                      CrownText(
                        'Try searching with different keywords',
                        style: ComponentStyles.subtitleText(theme),
                      ),
                    ],
                  ),
                ),
              )
            else
              ..._filteredComponents.map((component) {
                return CrownColumn(
                  style: CrownColumnStyle.start(),
                  children: [
                    _buildComponentCard(
                      context: context,
                      theme: theme,
                      title: component.title,
                      description: component.description,
                      icon: component.icon,
                      color: component.color,
                      features: component.features,
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                    ),
                  ],
                );
              }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildComponentCard({
    required CrownThemeData theme,
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required List<String> features,
    required BuildContext context,
  }) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            // Component Header
            CrownRow(
              style: CrownRowStyle.start(),
              children: [
                // Icon - Using CrownContainer with style from ComponentStyles
                CrownContainer(
                  style: ComponentStyles.componentIconBox(theme, color),
                  child: CrownCenter(
                    child: CrownIcon(
                      icon,
                      style: ComponentStyles.componentIcon(theme, color),
                    ),
                  ),
                ),
                CrownSizedBox(
                  style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
                ),
                // Title and Description
                CrownExpanded(
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        title,
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(4),
                      ),
                      CrownText(
                        description,
                        style: ComponentStyles.cardDescriptionText(theme),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Features section
            CrownText(
              'Features',
              style: ComponentStyles.sectionHeaderText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
            ),

            // Features list - Using CrownPadding instead of Padding
            ...features.map((feature) {
              return CrownPadding(
                style: CrownPaddingStyle(
                  padding: EdgeInsets.only(bottom: theme.spacing.sm),
                ),
                child: CrownRow(
                  style: CrownRowStyle.start(),
                  children: [
                    CrownIcon(
                      Icons.check_circle_outline,
                      style: CrownIconStyle(
                        color: color,
                        size: 16,
                      ),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.horizontal(theme.spacing.sm),
                    ),
                    CrownText(
                      feature,
                      style: ComponentStyles.featureText(theme),
                    ),
                  ],
                ),
              );
            }).toList(),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),
            // Button to view component
            CrownButton(
              'View Component',
              onPressed: () {
                // Navigate to the appropriate component page
                _navigateToComponent(context, title);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToComponent(BuildContext context, String componentName) {
    // Navigate to the appropriate detail page based on component name
    CrownNavigator.to(
      context,
      _ComponentDetailPage(componentName: componentName),
    );
  }
}

/// Wrapper page to display component body pages
class _ComponentDetailPage extends CrownPage {
  final String componentName;

  const _ComponentDetailPage({
    Key? key,
    required this.componentName,
  }) : super(key: key);

  @override
  String get title => componentName;

  @override
  Widget body(CrownThemeData theme) {
    // Return the appropriate body widget based on component name
    switch (componentName) {
      case 'List Tile':
        return ListTileBody().build(theme);
      case 'List View':
        return ListViewBody().build(theme);
      case 'Grid View':
        return GridViewBody().build(theme);
      case 'Styles':
        return StylesBody().build(theme);
      case 'Button':
        return StylesBody().build(theme);
      case 'Divider':
        return CrownDividerBody().build(theme);
      case 'Stepper':
        return CrownStepperBody().build(theme);
      case 'Radio':
        return CrownRadioBody().build(theme);
      case 'Slider':
        return CrownSliderBody().build(theme);
      case 'Dropdown':
        return CrownDropdownBody().build(theme);
      case 'Stack':
        return CrownStackBody().build(theme);
      case 'Expansion Tile':
        return CrownExpansionTileBody().build(theme);
      case 'Alert Dialog':
        return CrownAlertDialogBody().build(theme);
      case 'Bottom Sheet':
        return CrownBottomSheetBody().build(theme);
      case 'Progress Bar':
        return CrownProgressBarBody().build(theme);
      case 'Spinner':
        return CrownSpinnerBody().build(theme);
      case 'Refresh Indicator':
        return CrownRefreshIndicatorBody().build(theme);
      case 'Image':
        return CrownImageBody().build(theme);
      case 'Avatar':
        return CrownAvatarBody().build(theme);
      case 'Image Icon':
        return CrownImageIconBody().build(theme);
      case 'Chip':
        return CrownChipBody().build(theme);
      case 'Badge':
        return CrownBadgeBody().build(theme);
      case 'Input Chip':
        return CrownInputChipBody().build(theme);
      case 'Filter Chip':
        return CrownFilterChipBody().build(theme);
      case 'Choice Chip':
        return CrownChoiceChipBody().build(theme);
      case 'TextFormField':
        return CrownTextFormFieldBody().build(theme);
      case 'TabBar':
        return CrownTabBarBody().build(theme);
      case 'Align':
        return CrownAlignBody().build(theme);
      case 'Flexible':
        return CrownFlexibleBody().build(theme);
      case 'VerticalDivider':
        return CrownVerticalDividerBody().build(theme);
      case 'Tooltip':
        return CrownTooltipBody().build(theme);
      case 'HelpText':
        return CrownHelpTextBody().build(theme);
      case 'GestureDetector':
        return CrownGestureDetectorBody().build(theme);
      case 'InkWell':
        return CrownInkWellBody().build(theme);
      case 'PageView':
        return CrownPageViewBody().build(theme);
      case 'Visibility':
        return CrownVisibilityBody().build(theme);
      case 'AspectRatio':
        return CrownAspectRatioBody().build(theme);
      default:
        return CrownCenter(
          child: CrownText(
            'Component not found',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: theme.colors.error,
            ),
          ),
        );
    }
  }
}
