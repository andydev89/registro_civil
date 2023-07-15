import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/services/service_status_type.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/presentation/pages/home/utils/service_utils.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs_methods.dart';
import 'package:registro_civil_apk/presentation/widgets/list/paged_grid_view_widget.dart';
import 'package:skeletons/skeletons.dart';

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
        image: AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: SHIMMER_GRADIENT,
            ),
            child: ClipOval(
              child: Image.network(
                '$baseUrl$imageUrl?id=${item.idIconoMovil}',
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      shape: BoxShape.circle,
                    ),
                  );
                },
                errorBuilder: (
                  BuildContext context,
                  Object exception,
                  StackTrace? stackTrace,
                ) {
                  return Image.asset(
                    Assets.jpg.empty.path,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ),
        title: item.name,
        onPressedCheck: () {
          if (item.state == StatusType.active) {
            context.navigateTo(getRoute(item));
          }
        },
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
