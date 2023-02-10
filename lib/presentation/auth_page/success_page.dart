import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/success_widget.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ScaffoldAuthWidget(
      columnAlignment: MainAxisAlignment.center,
      children: [
        const SuccessWidget(),
        ...children,
      ],
    );
  }
}
