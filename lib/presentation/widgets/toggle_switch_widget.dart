import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchWidget extends StatefulWidget {
  const ToggleSwitchWidget({
    super.key,
    this.labels,
    this.onToggle,
    this.totalSwitches,
    this.initialLabelIndex,
  });
  final List<String>? labels;
  final void Function(int?)? onToggle;
  final int? totalSwitches;
  final int? initialLabelIndex;

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  late ValueNotifier<int> initial;

  @override
  void initState() {
    initial = ValueNotifier(widget.initialLabelIndex ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: initial,
      builder: (_, actual, __) {
        return ToggleSwitch(
          minWidth:
              MediaQuery.of(context).size.width * 0.8 / widget.totalSwitches!,
          minHeight: 50,
          fontSize: fontSizeDefault,
          initialLabelIndex: actual,
          activeBgColor: gradientePrincipal().colors,
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey.shade400,
          inactiveFgColor: Colors.white,
          totalSwitches: widget.totalSwitches,
          labels: widget.labels,
          multiLineText: true,
          onToggle: (value) {
            if (value == null || value == actual) return;
            initial.value = value;
            widget.onToggle?.call(value);
          },
        );
      },
    );
  }
}
