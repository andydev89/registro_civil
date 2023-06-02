import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';

class FaceRecognitionPage extends StatelessWidget {
  const FaceRecognitionPage({
    super.key,
    this.onFaceDetected,
  });
  final void Function(File image)? onFaceDetected;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SmartFaceCamera(
        autoCapture: true,
        showControls: false,
        defaultCameraLens: CameraLens.front,
        message: 'Mantenga su rostro en el cuadro verde',
        onCapture: (File? image) {
          if (image != null) {
            onFaceDetected?.call(image);
            context.popRoute();
          }
        },
      ),
    ).symmetricPadding(20, 20);
  }
}
