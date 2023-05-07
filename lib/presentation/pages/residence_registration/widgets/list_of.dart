import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/widgets/residence_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ListOf extends StatefulWidget {
  const ListOf({
    super.key,
    required this.icon,
    required this.title,
    this.add,
  });
  final Widget icon;
  final String title;
  final void Function()? add;

  @override
  State<ListOf> createState() => _ListOfState();
}

class _ListOfState extends State<ListOf> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  widget.icon,
                  const SizedBox(width: 8),
                  PrimaryText(
                    widget.title,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: constraints.maxHeight * 0.90,
                child: PageView(
                  children: [
                    ResidenceWidget(),
                    ResidenceWidget(),
                    ResidenceWidget(),
                  ],
                ),
              ),
            ],
          ).verticalPadding(10),
        );
      },
    );
  }
}
