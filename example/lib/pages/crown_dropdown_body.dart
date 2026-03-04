import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownDropdown example page body
class CrownDropdownBody extends PageBody {
  const CrownDropdownBody();

  @override
  Widget build(CrownThemeData theme) {
    return _CrownDropdownExample(theme: theme);
  }
}

class _CrownDropdownExample extends StatefulWidget {
  final CrownThemeData theme;

  const _CrownDropdownExample({required this.theme});

  @override
  State<_CrownDropdownExample> createState() => _CrownDropdownExampleState();
}

class _CrownDropdownExampleState extends State<_CrownDropdownExample> {
  String? selectedFruit;
  String? selectedColor;
  String? selectedSize;
  String? selectedPriority;

  final fruits = ['Apple', 'Banana', 'Orange', 'Mango', 'Strawberry'];
  final colors = ['Red', 'Blue', 'Green', 'Yellow', 'Purple'];
  final sizes = ['Small', 'Medium', 'Large', 'Extra Large'];
  final priorities = ['Low', 'Medium', 'High', 'Critical'];

  @override
  Widget build(BuildContext context) {
    return CrownScaffold(
      body: CrownSingleChildScrollView(
        style: CrownSingleChildScrollViewStyle.defaultStyle(widget.theme),
        child: CrownPadding(
          style: CrownPaddingStyle.defaultStyle(widget.theme),
          child: CrownColumn(
            style: CrownColumnStyle.start(),
            children: [
              // Title
              CrownText(
                'Dropdown Component',
                style: ComponentStyles.sectionHeaderText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.sm),
              ),
              CrownText(
                'Flexible dropdown selector component with multiple styles',
                style: ComponentStyles.subtitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),

              // Example 1: Default Dropdown
              CrownText(
                'Default Dropdown',
                style: ComponentStyles.cardTitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(widget.theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(widget.theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        'Select a Fruit',
                        style: ComponentStyles.listTileTitleText(widget.theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.md),
                      ),
                      CrownDropdown<String>(
                        value: selectedFruit,
                        items: fruits
                            .map((fruit) => DropdownMenuItem(
                                  value: fruit,
                                  child: Text(
                                    fruit,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedFruit = value;
                          });
                        },
                        style: CrownDropdownStyle.defaultStyle(widget.theme),
                        hint: 'Choose a fruit',
                      ),
                      if (selectedFruit != null) ...[
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(
                              widget.theme.spacing.md),
                        ),
                        CrownText(
                          'Selected: $selectedFruit',
                          style: TextStyle(
                            fontSize: 14,
                            color: widget.theme.colors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),

              // Example 2: Outlined Dropdown
              CrownText(
                'Outlined Dropdown',
                style: ComponentStyles.cardTitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(widget.theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(widget.theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        'Select a Color',
                        style: ComponentStyles.listTileTitleText(widget.theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.md),
                      ),
                      CrownDropdown<String>(
                        value: selectedColor,
                        items: colors
                            .map((color) => DropdownMenuItem(
                                  value: color,
                                  child: Text(
                                    color,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedColor = value;
                          });
                        },
                        style: CrownDropdownStyle.outlined(widget.theme),
                        hint: 'Pick your color',
                      ),
                      if (selectedColor != null) ...[
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(
                              widget.theme.spacing.md),
                        ),
                        CrownRow(
                          style: CrownRowStyle.start(),
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: _getColorFromString(selectedColor!),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            CrownSizedBox(
                              style: CrownSizedBoxStyle.horizontal(
                                  widget.theme.spacing.md),
                            ),
                            CrownText(
                              'Selected: $selectedColor',
                              style: TextStyle(
                                fontSize: 14,
                                color: widget.theme.colors.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),

              // Example 3: Filled Dropdown
              CrownText(
                'Filled Dropdown',
                style: ComponentStyles.cardTitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(widget.theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(widget.theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        'Select a Size',
                        style: ComponentStyles.listTileTitleText(widget.theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.md),
                      ),
                      CrownDropdown<String>(
                        value: selectedSize,
                        items: sizes
                            .map((size) => DropdownMenuItem(
                                  value: size,
                                  child: Text(
                                    size,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedSize = value;
                          });
                        },
                        style: CrownDropdownStyle.filled(widget.theme),
                        hint: 'Pick a size',
                      ),
                      if (selectedSize != null) ...[
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(
                              widget.theme.spacing.md),
                        ),
                        CrownText(
                          'Selected: $selectedSize',
                          style: TextStyle(
                            fontSize: 14,
                            color: widget.theme.colors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),

              // Example 4: Compact Dropdown with Priority
              CrownText(
                'Compact Dropdown',
                style: ComponentStyles.cardTitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(widget.theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(widget.theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownRow(
                        style: CrownRowStyle.spaceBetween(),
                        children: [
                          CrownText(
                            'Priority Level',
                            style:
                                ComponentStyles.listTileTitleText(widget.theme),
                          ),
                          if (selectedPriority != null)
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: widget.theme.spacing.sm,
                                vertical: widget.theme.spacing.xs,
                              ),
                              decoration: BoxDecoration(
                                color: _getPriorityColor(
                                        selectedPriority!, widget.theme)
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: CrownText(
                                selectedPriority!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: _getPriorityColor(
                                      selectedPriority!, widget.theme),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.md),
                      ),
                      CrownDropdown<String>(
                        value: selectedPriority,
                        items: priorities
                            .map((priority) => DropdownMenuItem(
                                  value: priority,
                                  child: Text(
                                    priority,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedPriority = value;
                          });
                        },
                        style: CrownDropdownStyle.compact(widget.theme),
                        hint: 'Set priority',
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),

              // Example 5: Real World - Dropdown Form
              CrownText(
                'Real World: Dropdown Form',
                style: ComponentStyles.cardTitleText(widget.theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(widget.theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(widget.theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        'Product Details',
                        style: ComponentStyles.listTileTitleText(widget.theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.md),
                      ),
                      CrownText(
                        'Choose Category',
                        style: TextStyle(
                          fontSize: 12,
                          color: widget.theme.colors.textSecondary,
                        ),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.sm),
                      ),
                      CrownDropdown<String>(
                        value: selectedFruit,
                        items: fruits
                            .map((fruit) => DropdownMenuItem(
                                  value: fruit,
                                  child: Text(
                                    fruit,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedFruit = value;
                          });
                        },
                        style: CrownDropdownStyle.defaultStyle(widget.theme),
                        hint: 'Select category',
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.lg),
                      ),
                      CrownText(
                        'Choose Size',
                        style: TextStyle(
                          fontSize: 12,
                          color: widget.theme.colors.textSecondary,
                        ),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(
                            widget.theme.spacing.sm),
                      ),
                      CrownDropdown<String>(
                        value: selectedSize,
                        items: sizes
                            .map((size) => DropdownMenuItem(
                                  value: size,
                                  child: Text(
                                    size,
                                    style: TextStyle(
                                      color: widget.theme.colors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedSize = value;
                          });
                        },
                        style: CrownDropdownStyle.defaultStyle(widget.theme),
                        hint: 'Select size',
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(widget.theme.spacing.lg),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getColorFromString(String color) {
    switch (color) {
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Green':
        return Colors.green;
      case 'Yellow':
        return Colors.yellow;
      case 'Purple':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  Color _getPriorityColor(String priority, CrownThemeData theme) {
    switch (priority) {
      case 'Low':
        return theme.colors.success;
      case 'Medium':
        return theme.colors.warning;
      case 'High':
        return Colors.orange;
      case 'Critical':
        return theme.colors.error;
      default:
        return theme.colors.textSecondary;
    }
  }
}
