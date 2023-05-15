import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ViewFromJsonWidget extends StatelessWidget {
  const ViewFromJsonWidget({
    super.key,
    required this.json,
  });
  final Map<dynamic, dynamic> json;

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[];

    json.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        widgets
          ..add(
            PrimaryText(
              '$key:',
              fontWeight: FontWeight.bold,
            ),
          )
          ..add(Indent(child: ViewFromJsonWidget(json: value)));
      } else if (value is List) {
        widgets
          ..add(
            PrimaryText(
              '$key:',
              fontWeight: FontWeight.bold,
            ),
          )
          ..add(
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  if (value[index] is Map<String, dynamic>) {
                    return Indent(
                      child: ViewFromJsonWidget(json: value[index] as Map),
                    );
                  } else {
                    return PrimaryText(value[index].toString());
                  }
                },
              ),
            ),
          );
      } else {
        widgets.add(PrimaryText('$key: $value'));
      }
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}

class Indent extends StatelessWidget {
  const Indent({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: child,
    );
  }
}
