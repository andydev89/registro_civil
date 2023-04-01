import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ModifyCant extends StatelessWidget {
  const ModifyCant({
    required this.cant,
    required this.onCantChanged,
    super.key,
  });
  final int cant;
  final void Function(int) onCantChanged;

  @override
  Widget build(BuildContext context) {
    const width = 27.0;
    // const height = 50.0;
    const size = 13.0;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryIconButton(
              shape: const BeveledRectangleBorder(),
              width: width,
              // height: height,
              onPressed: cant == 1 ? null : () => onCantChanged.call(cant - 1),
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
                size: size,
              ),
            ),
            Flexible(
                child: PrimaryText(
              cant.toString(),
              fontWeight: FontWeight.bold,
            ),).horizontalPadding(8),
            PrimaryIconButton(
              shape: const BeveledRectangleBorder(),
              width: width,
              // height: height,
              onPressed: () => onCantChanged.call(cant + 1),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
