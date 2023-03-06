import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/background_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/enunciado_widget.dart';

class ScaffoldServWidget extends StatelessWidget {
  const ScaffoldServWidget({
    super.key,
    this.enunciado,
    this.columnAlignment = MainAxisAlignment.spaceAround,
    required this.children,
  });
  final String? enunciado;
  final MainAxisAlignment columnAlignment;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BackgroundAuth(
          child: Column(
            children: [
              EnunciadoWidget(
                enunciado: enunciado,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 30,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Column(
                    mainAxisAlignment: columnAlignment,
                    children: children,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
