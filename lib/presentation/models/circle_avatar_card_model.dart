import 'package:flutter/material.dart';

class CircleAvatarCardModel {
  CircleAvatarCardModel({
    required this.image,
    required this.title,
    this.onPressedCheck,
    this.onPressedView,
  });

  final Image image;
  final String title;
  final void Function()? onPressedCheck;
  final void Function()? onPressedView;
}
