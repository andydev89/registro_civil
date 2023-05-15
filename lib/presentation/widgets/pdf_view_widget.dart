import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PDFViewWidget extends StatelessWidget {
  const PDFViewWidget({
    super.key,
    required this.document,
  });
  final String document;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FutureBuilder(
      future: createPdfFileFromBase64(document),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: PrimaryText(l10n.errorCarDoc));
        } else {
          return PDFView(
            filePath: snapshot.data!.path,
            swipeHorizontal: true,
            fitPolicy: FitPolicy.BOTH,
            onError: (error) {},
          ).verticalPadding(20);
        }
      },
    );
  }
}
