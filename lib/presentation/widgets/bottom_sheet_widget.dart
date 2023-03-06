import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: backgroundColor == null ? gradientePrincipal() : null,
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/img/general/footer.png'),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: TextoWidget(
              'apps.registrocivil.gob.ec',
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
