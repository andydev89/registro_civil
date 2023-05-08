import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class TableWidget<T> extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.fields,
    required this.totalHeight,
    required this.actions,
    required this.element,
  });

  final Map<String, String> fields;
  final Map<Crud, void Function(T)> actions;
  final double totalHeight;
  final T element;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final height = (totalHeight / (fields.length + 1)).floor() * 1.0;
    return Table(
      border: TableBorder.all(color: Colors.grey, width: 2),
      children: [
        ...fields
            .map(
              (key, value) => MapEntry(
                key,
                TableRow(
                  children: [
                    tableTitle(context, key, height),
                    SizedBox(
                      height: height,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => showPopover(
                                context: context,
                                bodyBuilder: (context) =>
                                    PrimaryText(value).symmetricPadding(5, 10),
                              ),
                              child: PrimaryText(
                                value,
                                textAlign: TextAlign.end,
                                maxLines: 1,
                                overFlow: TextOverflow.ellipsis,
                              ).symmetricPadding(5, 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .values,
        TableRow(
          children: [
            tableTitle(context, l10n.accion, height),
            SizedBox(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...actions.entries.map(
                    (e) => IconButton(
                      onPressed: () => e.value.call(element),
                      icon: e.key.toIcon(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ).horizontalPadding(10);
  }

  Widget tableTitle(BuildContext context, String key, double heigth) {
    return Container(
      height: heigth,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        gradient: gradientePrincipal(),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => showPopover(
              context: context,
              bodyBuilder: (context) =>
                  PrimaryText(key).symmetricPadding(5, 10),
            ),
            child: PrimaryText(
              key,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start,
              maxLines: 1,
              overFlow: TextOverflow.ellipsis,
            ).symmetricPadding(5, 10),
          ),
        ],
      ),
    );
  }
}
