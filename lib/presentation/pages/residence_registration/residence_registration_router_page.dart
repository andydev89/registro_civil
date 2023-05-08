import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_dependent_relation.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_type_agreemente.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/widgets/list_of.dart';
import 'package:registro_civil_apk/presentation/providers/page_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ResidenceRegistrationRouterPage extends ConsumerStatefulWidget {
  const ResidenceRegistrationRouterPage({super.key});

  @override
  ConsumerState<ResidenceRegistrationRouterPage> createState() =>
      _ResidenceRegistrationRouterPageState();
}

class _ResidenceRegistrationRouterPageState
    extends ConsumerState<ResidenceRegistrationRouterPage> {
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
    final itemsResidential = <Residential>[
      Residential(
        electricLightMeter: true,
        electricalCode: '1234567890',
        province: LocationModel(
          id: 'aadsda',
          name: 'La Habana',
          type: 'type',
        ),
        canton: LocationModel(
          id: '3cdfd',
          name: 'Centro Habana',
          type: 'type',
        ),
        parroquia: LocationModel(
          id: '234jsdf',
          name: 'Cayo Hueso',
          type: 'type',
        ),
        mainStreet: 'mainStreet',
        backStreet: 'backStreet',
        housingType: ResidentialHousingType.apartamento,
        tenureHousingTypeAgreement:
            ResidentialTenureHousingTypeAgreemente.propia,
        numberVillaBuilding: '23',
        floorNumber: '34',
        departmentNumber: '23',
        type: ResidenceType.principal,
        dependents: [
          Dependent(
            nuiDependents: '1010101010',
            relationship: ResidentialDependentRelation.none,
            date: 'dffdf',
            name: 'Jang',
            lastname: 'Acuna Ferrer',
            state: Status.active,
          ),
          Dependent(
            nuiDependents: '1212121212',
            relationship: ResidentialDependentRelation.none,
            date: 'wjfdf',
            name: 'Yinna',
            lastname: 'Herrera Alfonso',
            state: Status.active,
          ),
        ],
      ),
      Residential(
        electricLightMeter: false,
        electricalCode: '',
        province: LocationModel(
          id: 'ewsdcds',
          name: 'Matanzas',
          type: 'type',
        ),
        canton: LocationModel(
          id: 'dfksf',
          name: 'Pastorita',
          type: 'type',
        ),
        parroquia: LocationModel(
          id: 'asda',
          name: 'Algo',
          type: 'type',
        ),
        mainStreet: 'dfsdf',
        backStreet: 'dsfsd df',
        housingType: ResidentialHousingType.aticos,
        tenureHousingTypeAgreement:
            ResidentialTenureHousingTypeAgreemente.porServicios,
        numberVillaBuilding: '23',
        floorNumber: '32423',
        departmentNumber: '13',
        type: ResidenceType.secundaria,
        dependents: [
          Dependent(
            nuiDependents: '1313131313',
            relationship: ResidentialDependentRelation.discapacitado,
            date: 'sad',
            name: 'Asjd',
            lastname: 'Jjdf Yjsd',
            state: Status.active,
          ),
          Dependent(
            nuiDependents: '1414141414',
            relationship: ResidentialDependentRelation.terceraEdad,
            date: 'kdf',
            name: 'Hjsdf',
            lastname: 'JKHk Wudfnd',
            state: Status.active,
          ),
        ],
      ),
    ];
    ref.listen(pageProvider(0), (previous, next) {
      if (previous != next) {
        ref.read(pageProvider(1).notifier).state = 0;
      }
    });
    final actualPage = ref.watch(pageProvider(0));
    final actualPageDependents = ref.watch(pageProvider(1));
    final size = MediaQuery.of(context).size;
    return ResidenceRegistrationFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: l10n.comInfSolicitada,
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListOf<Residential>(
                  icon: const Icon(Icons.home),
                  title: l10n.listadoResidencias,
                  items: itemsResidential,
                  onPageChanged: (p0) =>
                      ref.read(pageProvider(0).notifier).state = p0,
                  actualPage: actualPage,
                  height: size.height * 0.2,
                  actions: {
                    Crud.update: (p0) {},
                    Crud.read: (p0) {},
                    Crud.delete: (p0) {},
                  },
                  fields: (index) => <String, String>{
                    l10n.tipoDeVivienda:
                        itemsResidential[index].housingType.toText,
                    l10n.direccion: itemsResidential[index].address,
                    l10n.tipoDeResidencia: itemsResidential[index]
                        .tenureHousingTypeAgreement
                        .toText,
                  },
                ),
                ListOf<Dependent>(
                  key: Key(actualPage.toString()),
                  icon: const Icon(Icons.groups_2),
                  title: l10n.dependientes,
                  items: itemsResidential[actualPage].dependents,
                  onPageChanged: (p0) =>
                      ref.read(pageProvider(1).notifier).state = p0,
                  actualPage: actualPageDependents,
                  height: size.height * 0.25,
                  actions: {
                    Crud.read: (p0) {},
                    Crud.delete: (p0) {},
                  },
                  fields: (index) => <String, String>{
                    l10n.numCedula: itemsResidential[actualPage]
                        .dependents[index]
                        .nuiDependents,
                    l10n.nombre:
                        itemsResidential[actualPage].dependents[index].name,
                    l10n.apellidos:
                        itemsResidential[actualPage].dependents[index].lastname,
                    l10n.residencia: itemsResidential[actualPage].address,
                  },
                ),
                PrimaryReactiveTextAreaField(
                  prefixIconLabel: Crud.read.toIcon(context),
                  label: l10n.observaciones,
                  formControl: formModel.observationsControl,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ReactiveResidenceRegistrationFormConsumer(
          builder: (_, formModel, __) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryAsyncButton(
                  title: l10n.verCertificado,
                ),
                const SizedBox(height: 8),
                PrimaryAsyncButton(
                  title: l10n.guardar,
                  // onPressed: formModel.form.valid ? () {} : null,
                ),
              ],
            );
          },
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
