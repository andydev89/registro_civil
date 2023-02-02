import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      color: Theme.of(context).primaryColor.withOpacity(0.99),
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
