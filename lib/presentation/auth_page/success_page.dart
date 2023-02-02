import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/scaffold_auth_widget.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ScaffoldAuthWidget(
      children: [
        Image.asset(
          'assets/img/auth/checkmark.png',
          color: Theme.of(context).primaryColor,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        ...children,
      ],
    );
  }
}
