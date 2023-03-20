import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';

class CircleAvatarCardGrid extends StatelessWidget {
  const CircleAvatarCardGrid({
    super.key,
    required this.elements,
    this.crossAxisCount = 2,
  });
  final List<CircleAvatarCardModel> elements;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.55,
        crossAxisSpacing: 20,
      ),
      itemCount: elements.length,
      itemBuilder: (context, index) => CircleAvatarCardWidget(
        image: elements[index].image,
        title: elements[index].title,
        onPressedCheck: elements[index].onPressedCheck,
        onPressedView: elements[index].onPressedView,
      ),
    );
  }
}
