import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/home/utils/service_utils.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CircleAvatarCardGrid extends ConsumerStatefulWidget {
  const CircleAvatarCardGrid({
    super.key,
    required this.data,
    this.crossAxisCount = 2,
  });
  final ResponseModelPagination<List<TypeServiceModel>> data;
  final int crossAxisCount;

  @override
  ConsumerState<CircleAvatarCardGrid> createState() =>
      _CircleAvatarCardGridState();
}

class _CircleAvatarCardGridState extends ConsumerState<CircleAvatarCardGrid> {
  late PagingController<int, TypeServiceModel> _pagingController;

  @override
  void initState() {
    super.initState();
    _pagingController = PagingController(firstPageKey: 1);
    final elements =
        widget.data.data?.where((element) => element.publishMovil).toList() ??
            [];
    if ((widget.data.pageNumbers ?? 0) + 1 < (widget.data.totalPages ?? 1)) {
      _pagingController.appendPage(elements, 1);
    } else {
      _pagingController.appendLastPage(elements);
    }
    _pagingController.addPageRequestListener(
      (pageKey) => fetchPage(
        ref,
        pageKey,
        _pagingController,
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PagedGridView<int, TypeServiceModel>(
      pagingController: _pagingController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
        childAspectRatio: 0.60,
        crossAxisSpacing: 30,
      ),
      addAutomaticKeepAlives: false,
      showNewPageProgressIndicatorAsGridChild: false,
      builderDelegate: PagedChildBuilderDelegate<TypeServiceModel>(
        animateTransitions: true,
        newPageProgressIndicatorBuilder: (context) => Center(
          child: const CircularProgressIndicator().verticalPadding(10),
        ),
        noItemsFoundIndicatorBuilder: (context) => Center(
          child: PrimaryText(l10n.noHayElementosMostrar),
        ),
        newPageErrorIndicatorBuilder: (context) => Column(
          children: [
            const SizedBox(height: 20),
            PrimaryText(l10n.errorCargarElementos),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () => _pagingController.refresh(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        itemBuilder: (_, item, index) => CircleAvatarCardWidget(
          image: FutureBuilder(
            future: createImageFileFromBase64(item.iconoMovil),
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
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          title: item.name,
          onPressedCheck: () => item.state == Status.active
              ? context.navigateTo(getRoute(item))
              : () {},
          onPressedView: () => showContentDialog(
            context,
            content: CertificateDescription(
              typeSimpleCertificate: item,
            ),
          ),
        ),
      ),
    ).horizontalPadding(10);
  }
}
