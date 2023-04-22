import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/presentation/pages/home/utils/service_utils.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';

class CircleAvatarCardGrid extends StatelessWidget {
  const CircleAvatarCardGrid({
    super.key,
    required this.elements,
    this.crossAxisCount = 2,
  });
  final List<TypeServiceModel> elements;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.55,
        crossAxisSpacing: 20,
      ),
      itemCount: elements.length,
      itemBuilder: (context, index) => CircleAvatarCardWidget(
        image: FutureBuilder(
          future: createImageFileFromBase64(elements[index].iconoMovil),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: Image.file(snapshot.data!).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
        title: elements[index].name,
        onPressedCheck: () => elements[index].state == Status.active
            ? context.navigateTo(getRoute(elements[index]))
            : () {},
        onPressedView: () => showContentDialog(
          context,
          content: CertificateDescription(
            typeSimpleCertificate: elements[index],
          ),
        ),
      ),
    );
  }
}
