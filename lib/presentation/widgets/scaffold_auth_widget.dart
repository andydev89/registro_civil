import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/background_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ScaffoldAuthWidget extends StatelessWidget {
  const ScaffoldAuthWidget({
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
              PrimaryTitle(
                title: enunciado,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 30,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.56,
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
