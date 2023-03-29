import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';

class CircleAvatarCardGrid extends StatelessWidget {
  const CircleAvatarCardGrid({
    super.key,
    required this.elements,
    this.crossAxisCount = 2,
    this.filter = '',
  });
  final List<CircleAvatarCardModel> elements;
  final int crossAxisCount;
  final String filter;

  @override
  Widget build(BuildContext context) {
    final filterElements = filter.isEmpty
        ? elements
        : elements
            .where(
              (element) =>
                  element.title.toLowerCase().contains(filter.toLowerCase()),
            )
            .toList();
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.55,
        crossAxisSpacing: 20,
      ),
      itemCount: filterElements.length,
      itemBuilder: (context, index) => CircleAvatarCardWidget(
        image: filterElements[index].image,
        title: filterElements[index].title,
        onPressedCheck: filterElements[index].onPressedCheck,
        onPressedView: filterElements[index].onPressedView,
      ),
    );
  }
}
