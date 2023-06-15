import 'package:flutter/cupertino.dart';
import 'package:registro_civil_apk/presentation/widgets/skeleton/circle_avatar_card_skeleton.dart';

class GridSkeletonCircleAvatarCardWidget extends StatelessWidget {
  const GridSkeletonCircleAvatarCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.60,
          crossAxisSpacing: 30,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const SkeletonCircleAvatarCardWidget();
        },
      ),
    );
  }
}