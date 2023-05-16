import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/services/service_status_type.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/presentation/pages/home/utils/service_utils.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs_methods.dart';
import 'package:registro_civil_apk/presentation/widgets/list/paged_grid_view_widget.dart';

class CircleAvatarCardGrid extends ConsumerWidget {
  const CircleAvatarCardGrid({
    super.key,
    this.fetch,
    this.crossAxisCount = 2,
    this.firstElements = const [],
    this.totalPages,
    this.firstPage = 0,
  });
  final Future<ResponseModelPagination<List<TypeServiceModel>>> Function(int)?
      fetch;
  final List<TypeServiceModel> firstElements;
  final int crossAxisCount;
  final int? totalPages;
  final int firstPage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PagedGridViewWidget<TypeServiceModel>(
      fetch: fetch,
      childAspectRatio: 0.60,
      crossAxisCount: crossAxisCount,
      firstElements: firstElements,
      crossAxisSpacing: 30,
      firstPage: firstPage,
      totalPages: totalPages,
      itemBuilder: (_, item, __) => CircleAvatarCardWidget(
        image: FutureBuilder(
          future: createImageFileFromBase64(item.iconoMovil),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: Image.file(snapshot.data!).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        title: item.name,
        onPressedCheck: () => item.state == StatusType.active
            ? context.navigateTo(getRoute(item))
            : () {},
        onPressedView: () => showContentDialog(
          context,
          content: CertificateDescription(
            typeSimpleCertificate: item,
          ),
        ),
      ),
    );
  }
}
