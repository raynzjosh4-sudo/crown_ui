import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownStepper example page body
class CrownStepperBody extends PageBody {
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
                'Multi-step form and progress tracking component',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildVerticalStepper(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildHorizontalStepper(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalStepper(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Vertical Stepper',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Traditional step-by-step progress indicator',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 500,
            child: StatefulBuilder(
              builder: (context, setState) {
                int _currentStep = 0;

                return CrownStepper(
                  currentStep: _currentStep,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() => _currentStep = step);
                  },
                  steps: [
                    Step(
                      title: CrownText(
                        'Personal Information',
                        style: ComponentStyles.listTileTitleText(theme),
                      ),
                      subtitle: CrownText(
                        'Enter your basic details',
                        style: ComponentStyles.listTileSubtitleText(theme),
                      ),
                      content: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Step 1: Personal Information',
                            style: ComponentStyles.listTileTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            'Enter your name, email, and phone number',
                            style: ComponentStyles.listTileSubtitleText(theme),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                    ),
                    Step(
                      title: CrownText(
                        'Address Information',
                        style: ComponentStyles.listTileTitleText(theme),
                      ),
                      subtitle: CrownText(
                        'Provide your address',
                        style: ComponentStyles.listTileSubtitleText(theme),
                      ),
                      content: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Step 2: Address Information',
                            style: ComponentStyles.listTileTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            'Enter your street address, city, and zip code',
                            style: ComponentStyles.listTileSubtitleText(theme),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 1,
                    ),
                    Step(
                      title: CrownText(
                        'Confirmation',
                        style: ComponentStyles.listTileTitleText(theme),
                      ),
                      subtitle: CrownText(
                        'Review and confirm',
                        style: ComponentStyles.listTileSubtitleText(theme),
                      ),
                      content: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Step 3: Confirmation',
                            style: ComponentStyles.listTileTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            'Review your information and submit the form',
                            style: ComponentStyles.listTileSubtitleText(theme),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 2,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalStepper(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'iOS-Style Progress Indicator',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Clean horizontal progress tracking for forms',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          StatefulBuilder(
            builder: (context, setState) {
              int _currentStep = 0;
              final steps = ['Cart', 'Shipping', 'Payment', 'Complete'];

              return CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  // iOS-style horizontal progress indicator
                  CrownRow(
                    style: CrownRowStyle.start(),
                    children: [
                      ...List.generate(steps.length, (index) {
                        final isActive = index <= _currentStep;
                        final isCompleted = index < _currentStep;

                        return CrownExpanded(
                          child: CrownColumn(
                            style: CrownColumnStyle.center(),
                            children: [
                              // Step circle
                              GestureDetector(
                                onTap: () =>
                                    setState(() => _currentStep = index),
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isActive
                                        ? theme.colors.primary
                                        : theme.colors.border,
                                  ),
                                  child: Center(
                                    child: isCompleted
                                        ? CrownIcon(
                                            Icons.check,
                                            size: 20,
                                            color: Colors.white,
                                          )
                                        : CrownText(
                                            '${index + 1}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                              CrownSizedBox(
                                style: CrownSizedBoxStyle.vertical(
                                    theme.spacing.sm),
                              ),
                              // Step label
                              CrownText(
                                steps[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: isActive
                                      ? theme.colors.primary
                                      : theme.colors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),
                  // Content area
                  CrownContainer(
                    backgroundColor: theme.colors.surface.withOpacity(0.5),
                    borderRadius: 12,
                    child: CrownPadding(
                      style: CrownPaddingStyle(
                        padding: const EdgeInsets.all(20),
                      ),
                      child: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Step ${_currentStep + 1}: ${steps[_currentStep]}',
                            style: ComponentStyles.listTileTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            _getStepContent(_currentStep),
                            style: ComponentStyles.listTileSubtitleText(theme),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),
                  // Navigation buttons
                  CrownRow(
                    style: CrownRowStyle.spaceBetween(),
                    children: [
                      _currentStep > 0
                          ? CrownButton(
                              'Back',
                              onPressed: () => setState(() => _currentStep--),
                            )
                          : SizedBox.shrink(),
                      _currentStep < steps.length - 1
                          ? CrownButton(
                              'Next',
                              onPressed: () => setState(() => _currentStep++),
                            )
                          : CrownButton(
                              'Done',
                              onPressed: () => setState(() => _currentStep = 0),
                            ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  String _getStepContent(int step) {
    switch (step) {
      case 0:
        return 'Review and confirm all items in your shopping cart';
      case 1:
        return 'Select your delivery address and shipping method';
      case 2:
        return 'Enter your payment information securely';
      case 3:
        return 'Your order has been successfully placed!';
      default:
        return '';
    }
  }
}
