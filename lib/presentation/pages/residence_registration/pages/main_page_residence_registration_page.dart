import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/widgets/list_of.dart';
import 'package:registro_civil_apk/presentation/providers/page_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MainPageResicenceRegistrationPage extends ConsumerStatefulWidget {
  const MainPageResicenceRegistrationPage({super.key});

  @override
  ConsumerState<MainPageResicenceRegistrationPage> createState() =>
      _MainPageResicenceRegistrationPageState();
}

class _MainPageResicenceRegistrationPageState
    extends ConsumerState<MainPageResicenceRegistrationPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showAceptAgreement(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: l10n.comInfSolicitada,
      body: ResidenceRegistrationFormBuilder(
        builder: (context, formModel, _) {
          return LoadingProviderWidget(
            async: ref.watch(residenceRegistrationProvider),
            data: (_) {
              final user = ref.watch(resRegProvider);
              return Column(
                children: [
                  PrimaryReactiveTextAreaField(
                    prefixIconLabel: Crud.read.toIcon(context),
                    label: l10n.observaciones,
                    formControl: formModel.observationsControl,
                  ),
                ],
              );
            },
            onRefresh: () => ref.refresh(residenceRegistrationProvider),
            onRefreshIndicatot: () => ref.read(
              residenceRegistrationProvider.future,
            ),
          );
        },
      ),
    );

    // return ResidenceRegistrationFormBuilder(
    //   builder: (context, formModel, child) => PrimaryScaffold(
    //     title: l10n.registroRes,
    //     subtitle: l10n.comInfSolicitada,
    //     body: Expanded(
    //       child: SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             PrimaryReactiveTextAreaField(
    //               prefixIconLabel: Crud.read.toIcon(context),
    //               label: l10n.observaciones,
    //               formControl: formModel.observationsControl,
    //             ),
    //             ListOf<Residential>(
    //               icon: const Icon(Icons.home),
    //               title: l10n.listadoResidencias,
    //               items: itemsResidential,
    //               add: () => context.navigateTo(
    //                 const FirstStepResidenceRoute(),
    //               ),
    //               showAdd: true,
    //               onPageChanged: (p0) =>
    //                   ref.read(pageProvider(0).notifier).state = p0,
    //               actualPage: actualPage,
    //               height: size.height * 0.2,
    //               actions: {
    //                 Crud.update: (p0) {},
    //                 Crud.read: (p0) {},
    //                 Crud.delete: (p0) => showDeleteDialog(
    //                       context,
    //                       onDelete: () => ref
    //                           .read(residenceRegProvider.notifier)
    //                           .removeResidence(p0),
    //                     ),
    //               },
    //               fields: (index) => <String, String>{
    //                 l10n.tipoDeVivienda:
    //                     itemsResidential[index].housingType.toText,
    //                 l10n.direccion: itemsResidential[index].address,
    //                 l10n.tipoDeResidencia: itemsResidential[index]
    //                     .tenureHousingTypeAgreement
    //                     .toText,
    //               },
    //             ),
    //             ListOf<Dependent>(
    //               key: Key(actualPage.toString()),
    //               icon: const Icon(Icons.groups_2),
    //               title: l10n.dependientes,
    //               showAdd: itemsResidential.isNotEmpty,
    //               items: itemsResidential.isNotEmpty
    //                   ? itemsResidential[actualPage].dependents
    //                   : [],
    //               onPageChanged: (p0) =>
    //                   ref.read(pageProvider(1).notifier).state = p0,
    //               actualPage: actualPageDependents,
    //               height: size.height * 0.25,
    //               actions: {
    //                 Crud.read: (p0) {},
    //                 Crud.delete: (p0) {},
    //               },
    //               fields: (index) => <String, String>{
    //                 l10n.numCedula: itemsResidential[actualPage]
    //                     .dependents[index]
    //                     .nuiDependents,
    //                 l10n.nombre:
    //                     itemsResidential[actualPage].dependents[index].name,
    //                 l10n.apellidos:
    //                     itemsResidential[actualPage].dependents[index].lastname,
    //                 l10n.residencia: itemsResidential[actualPage].address,
    //               },
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     bottomNavigationBar: ReactiveResidenceRegistrationFormConsumer(
    //       builder: (_, formModel, __) {
    //         return Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             PrimaryAsyncButton(
    //               title: l10n.verCertificado,
    //             ),
    //             const SizedBox(height: 8),
    //             PrimaryAsyncButton(
    //               title: l10n.guardar,
    //               // onPressed: formModel.form.valid ? () {} : null,
    //             ),
    //           ],
    //         );
    //       },
    //     ).symmetricPadding(10, 30),
    //   ),
    // );
  }
}
