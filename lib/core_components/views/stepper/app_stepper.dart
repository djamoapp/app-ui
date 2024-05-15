import 'package:app_ui_m2/core/enums/standard_button_style.dart';
import 'package:app_ui_m2/core_components/controls/buttons/standard_buttons/standard_buttons.dart';
import 'package:app_ui_m2/design_tokens/colors/interface_colors.dart';
import 'package:app_ui_m2/design_tokens/iconography/app_icons.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/models/app_step.dart';

class AppStepper extends StatefulWidget {
  const AppStepper(
      {Key? key,
      this.onPrevStep,
      this.onNextStep,
      this.initialStep = 0,
      required this.steps,
      this.controlsBuilder,
      this.stepperWidth,
      this.onFinish})
      : super(key: key);

  final void Function(int? prevStep, int currentStep, int? nextStep,
      PageController controller)? onPrevStep;

  final void Function(int? prevStep, int currentStep, int? nextStep,
      PageController controller)? onNextStep;

  final double? stepperWidth;

  final int initialStep;

  final List<AppStep> steps;

  final Widget Function(
    BuildContext context, {
    void Function(int? prevStep, int currentStep, int? nextStep,
            PageController pageController)?
        onPrevStep,
    void Function(int? prevStep, int currentStep, int? nextStep,
            PageController pageController)?
        onNextStep,
  })? controlsBuilder;

  final void Function()? onFinish;

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  late int _currentStep;

  late final PageController _pageController;

  bool _isCurrentStepValid = true;

  @override
  void initState() {
    super.initState();
    _currentStep = widget.initialStep;
    _pageController = PageController(
      initialPage: widget.initialStep,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.steps.length, (index) {
            if (_currentStep == widget.steps.indexOf(widget.steps[index])) {
              return Expanded(
                  child: _isCurrentStepValid
                      ? _currentStepWidget
                      : _errorStepWidget);
            } else if (_currentStep <
                widget.steps.indexOf(widget.steps[index])) {
              return Expanded(child: _futureStepWidget);
            } else if (_currentStep >=
                widget.steps.indexOf(widget.steps[index])) {
              if (widget.steps[index].validator == null) {
                return Expanded(child: _successStepWidget);
              } else {
                bool? isStepValid = widget.steps[index].validator?.call();
                if (isStepValid!) {
                  return Expanded(child: _successStepWidget);
                } else {
                  return Expanded(child: _errorStepWidget);
                }
              }
            } else {
              return Expanded(child: _futureStepWidget);
            }
          }),
        ),
        AppGaps.l,
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                widget.steps.length, (index) => widget.steps[index].content),
          ),
        ),
        AppGaps.l,
        if (widget.controlsBuilder != null)
          widget.controlsBuilder!.call(
            context,
            onPrevStep: widget.onPrevStep,
            onNextStep: widget.onNextStep,
          ),
        if (widget.controlsBuilder == null)
          Row(
            children: [
              Expanded(
                child: StandardButtons.large(
                  prefixIcon: CupertinoIcons.chevron_back,
                  label: "Précédent",
                  style: StandardButtonStyle.outlined,
                  onPressed: () {
                    if (widget.onPrevStep != null) {
                      if (_currentStep != 0) {
                        setState(() {
                          _currentStep--;
                        });
                      }
                      widget.onPrevStep!.call(
                          _currentStep == 0 ? null : _currentStep - 1,
                          _currentStep,
                          _currentStep == widget.steps.length - 1
                              ? null
                              : _currentStep + 1,
                          _pageController);
                    } else {
                      if (_currentStep != 0) {
                        setState(() {
                          _isCurrentStepValid = true;
                          _currentStep--;
                        });
                        _animateToPage(_currentStep);
                      } else {
                        _animateToPage(_currentStep - 1);
                      }
                    }
                  },
                ),
              ),
              AppGaps.m,
              Expanded(
                child: _currentStep == widget.steps.length - 1
                    ? StandardButtons.large(
                        label: "Terminer",
                        onPressed: () {
                          _isCurrentStepValid =
                              widget.steps[_currentStep].validator?.call() ??
                                  true;
                          if (_currentStep == widget.steps.length - 1 &&
                              _isCurrentStepValid &&
                              widget.onFinish != null) {
                            widget.onFinish!.call();
                          } else {
                            setState(() {});
                          }
                        },
                      )
                    : StandardButtons.large(
                        suffixIcon: CupertinoIcons.chevron_forward,
                        label: "Suivant",
                        onPressed: () {
                          /*if (widget.onNextStep == null) {
                      if (currentStep+1 <= widget.steps.length-1) {
                        setState(() {
                          currentStep++;
                        });
                      }
                    } else {
                      if (widget.steps[currentStep].validator == null) {
                        setState(() {});
                      } else {
                        if (widget.steps[currentStep].validator!.call()) {
                          widget.onNextStep!(currentStep-1 < 0 ? null : currentStep-1, currentStep, currentStep+1 > widget.steps.length-1 ? null : currentStep+1);
                        } else {
                          setState(() {});
                        }
                      }
                    }*/

                          if (widget.onNextStep != null) {
                            if (_currentStep != widget.steps.length - 1) {
                              if (widget.steps[_currentStep].validator!
                                  .call()) {
                                setState(() {
                                  _currentStep++;
                                });
                              } else {
                                setState(() {});
                              }
                            }
                            widget.onNextStep!.call(
                                _currentStep == 0 ? null : _currentStep - 1,
                                _currentStep,
                                _currentStep == widget.steps.length - 1
                                    ? null
                                    : _currentStep + 1,
                                _pageController);
                          } else {
                            setState(() {
                              _isCurrentStepValid = widget
                                      .steps[_currentStep].validator
                                      ?.call() ??
                                  true;
                              if (_currentStep != widget.steps.length - 1 &&
                                  _isCurrentStepValid) {
                                _currentStep++;
                              }
                            });
                            _animateToPage(_currentStep);
                          }
                        },
                      ),
              ),
            ],
          ),
      ],
    );
  }

  void _animateToPage(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.ease,
    );
  }

  Widget get _successStepWidget => SizedBox(
        height: 24,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DottedLine(
              dashLength: 3.6,
              dashGapLength: 3.5,
              dashColor: InterfaceColors.success.defaultColor!,
              lineThickness: 2,
              lineLength:
                  (widget.stepperWidth ?? MediaQuery.of(context).size.width) /
                      widget.steps.length,
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: InterfaceColors.success.defaultColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                AppIcons.check,
                color: Colors.white,
                size: 11.76,
              ),
            ),
          ],
        ),
      );

  Widget get _errorStepWidget => SizedBox(
        height: 24,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DottedLine(
              dashLength: 3.6,
              dashGapLength: 3.5,
              dashColor: InterfaceColors.error.defaultColor!,
              lineThickness: 2,
              lineLength:
                  (widget.stepperWidth ?? MediaQuery.of(context).size.width) /
                      widget.steps.length,
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: InterfaceColors.error.backGroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                AppIcons.cross,
                color: InterfaceColors.error.defaultColor,
                size: 11.76,
              ),
            ),
          ],
        ),
      );

  Widget get _currentStepWidget => SizedBox(
        height: 24,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DottedLine(
              dashLength: 3.6,
              dashGapLength: 3.5,
              dashColor: InterfaceColors.action.disabledColor!,
              lineThickness: 2,
              lineLength:
                  (widget.stepperWidth ?? MediaQuery.of(context).size.width) /
                      widget.steps.length,
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: InterfaceColors.action.disabledColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: InterfaceColors.action.defaultColor!,
                        width: 2,
                      )),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _futureStepWidget => SizedBox(
        height: 24,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DottedLine(
              dashLength: 3.6,
              dashGapLength: 3.5,
              dashColor: InterfaceColors.action.disabledColor!,
              lineThickness: 2,
              lineLength:
                  (widget.stepperWidth ?? MediaQuery.of(context).size.width) /
                      widget.steps.length,
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: InterfaceColors.action.backGroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: InterfaceColors.action.disabledColor!,
                        width: 2,
                      )),
                ),
              ),
            ),
          ],
        ),
      );
}
