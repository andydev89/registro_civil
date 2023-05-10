import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/widgets/table_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ListOf<T> extends StatefulWidget {
  const ListOf({
    super.key,
    required this.icon,
    required this.title,
    this.add,
    required this.items,
    this.onPageChanged,
    required this.fields,
    required this.actions,
    required this.actualPage,
    required this.height,
    required this.showAdd,
  });
  final Widget icon;
  final String title;
  final void Function()? add;
  final bool showAdd;
  final List<T> items;
  final void Function(int)? onPageChanged;
  final Map<String, String> Function(int index) fields;
  final Map<Crud, void Function(T)> actions;
  final int actualPage;
  final double height;

  @override
  State<ListOf<T>> createState() => _ListOfState();
}

class _ListOfState<T> extends State<ListOf<T>> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                widget.icon,
                const SizedBox(width: 8),
                PrimaryText(
                  widget.title,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Row(
              children: [
                PrimaryText(
                  widget.items.isNotEmpty
                      ? '${widget.actualPage + 1}/${widget.items.length}'
                      : '',
                ),
                if (widget.showAdd)
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: IconButton(
                      onPressed: widget.add,
                      icon: Crud.create.toIcon(context),
                      padding: EdgeInsets.zero,
                    ),
                  ),
              ],
            )
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: widget.height,
          child: widget.items.isNotEmpty
              ? PageView(
                  onPageChanged: widget.onPageChanged,
                  children: widget.items
                      .mapIndexed(
                        (index, e) => TableWidget<T>(
                          fields: widget.fields.call(index),
                          totalHeight: widget.height,
                          actions: widget.actions,
                          element: e,
                        ),
                      )
                      .toList(),
                )
              : Center(
                  child: PrimaryText(l10n.noHayElementosMostrar),
                ),
        ),
      ],
    ).verticalPadding(10);
  }
}
