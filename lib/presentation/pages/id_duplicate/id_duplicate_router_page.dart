import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';

class IdDuplicateRouterPage extends ConsumerWidget {
  const IdDuplicateRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Se inicializa el provider y se valida que no se inicialice nuevamente en el formulario
    ref.watch(idDuplicateProvider);
    return const AutoRouter();
  }
}
