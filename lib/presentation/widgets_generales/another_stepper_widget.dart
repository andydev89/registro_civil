import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class AnotherStepperWidget extends StatelessWidget {
  const AnotherStepperWidget({
    super.key,
    required this.activeIndex,
    required this.totalElement,
    this.barThickness = 18,
    this.size = 40,
    this.fontSize = fontSizeDefault,
  });
  final int activeIndex;
  final int totalElement;
  final double barThickness;
  final double size;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return AnotherStepper(
      activeBarColor: Theme.of(context).primaryColor,
      inActiveBarColor: Colors.grey.shade400,
      activeIndex: activeIndex,
      barThickness: barThickness,
      stepperList: List<StepperData>.generate(
        totalElement,
        (index) => StepperData(
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: activeIndex >= index
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade400,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Center(
              child: TextoWidget(
                '${index + 1}',
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
      stepperDirection: Axis.horizontal,
      iconWidth: size,
      iconHeight: size,
    );
  }
}
