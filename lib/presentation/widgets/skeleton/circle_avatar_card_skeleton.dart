import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonCircleAvatarCardWidget extends StatelessWidget {
  const SkeletonCircleAvatarCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 70),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.grey.shade200,
            shadows: const <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: Color.fromRGBO(217, 210, 200, 0.51),
                offset: Offset(6, 6),
                blurRadius: 16,
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.83),
                offset: Offset(-6, -6),
                blurRadius: 16,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 35,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      width: 55,
                      height: 55,
                      borderRadius: borderRadius(),
                    ),
                  ),
                  SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                      width: 55,
                      height: 55,
                      borderRadius: borderRadius(),
                    ),
                  ),
                ],
              ).verticalPadding(15),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: 100,
                height: 100,
                shape: BoxShape.circle,
              ),
            ),
          ),
        )
      ],
    );
  }
}
