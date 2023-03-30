import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:power_ups/extensions/iterable_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/payment_method_type.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PaymentSelector extends HookWidget {
  const PaymentSelector({
    super.key,
    required this.paymentMethods,
    required this.formControl,
    required this.label,
  });
  final List<PaymentMethodType> paymentMethods;
  final FormControl<PaymentMethodType> formControl;
  final String label;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int?>(null);
    return Column(
      children: [
        PrimaryText(label).verticalPadding(5),
        ...paymentMethods.mapWithIndex(
          (index, e) => GestureDetector(
            onTap: () {
              selectedIndex.value = index;
              formControl.updateValue(e);
            },
            child: PaymentCard(
              paymentMethod: e,
              color: selectedIndex.value == index ? Colors.blue : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    this.color,
    required this.paymentMethod,
  });
  final Color? color;
  final PaymentMethodType paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: paymentMethod.getIcon(),
          ),
          const SizedBox(width: 10),
          paymentMethod.getText(),
        ],
      ).verticalPadding(20),
    );
  }
}
