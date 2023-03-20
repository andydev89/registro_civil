import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:power_ups/extensions/iterable_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/payment_method_type.dart';

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
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ).verticalPadding(5),
        ...paymentMethods.mapWithIndex(
          (index, e) => GestureDetector(
            onTap: () {
              selectedIndex.value = index;
              formControl.updateValue(e);
            },
            child: Container(
              decoration: ShapeDecoration(
                color:
                    selectedIndex.value == index ? Colors.blue : Colors.white,
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
              child: Center(child: Text(e.toText).verticalPadding(30)),
            ),
          ),
        ),
      ],
    );
  }
}
