import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/presentation/widgets/list/utils/paged_view_utils.dart';

class PagedGridViewWidget<T> extends ConsumerStatefulWidget {
  const PagedGridViewWidget({
    super.key,
    this.firstPage = 0,
    this.firstElements = const [],
    this.totalPages,
    this.fetch,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.crossAxisSpacing = 0.0,
    required this.itemBuilder,
  });

  final Future<ResponseModelPagination<List<T>>> Function(int)? fetch;
  final List<T> firstElements;
  final int firstPage;
  final int? totalPages;
  final int crossAxisCount;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final Widget Function(BuildContext context, T element, int index) itemBuilder;

  @override
  ConsumerState<PagedGridViewWidget<T>> createState() =>
      _PagedGridViewWidgetState<T>();
}

class _PagedGridViewWidgetState<T>
    extends ConsumerState<PagedGridViewWidget<T>> {
  late PagingController<int, T> _pagingController;

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _pagingController = PagingController(
      firstPageKey: widget.firstPage,
      invisibleItemsThreshold: 2,
    );
    if (widget.totalPages != null) {
      if (widget.firstPage + 1 < widget.totalPages!) {
        _pagingController.appendPage(widget.firstElements, widget.firstPage);
      } else {
        _pagingController.appendLastPage(widget.firstElements);
      }
    }
    _pagingController.addPageRequestListener(
      (pageKey) => fetchPage<T>(
        widget.fetch,
        pageKey,
        _pagingController,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, T>(
      pagingController: _pagingController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
        childAspectRatio: widget.childAspectRatio,
        crossAxisSpacing: widget.crossAxisSpacing,
      ),
      addAutomaticKeepAlives: false,
      showNewPageProgressIndicatorAsGridChild: false,
      showNewPageErrorIndicatorAsGridChild: false,
      builderDelegate: pagedChildBuilderDelegate(
        context: context,
        itemBuilder: widget.itemBuilder,
        pagingController: _pagingController,
      ),
    ).horizontalPadding(10);
  }
}
