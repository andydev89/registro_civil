import 'package:flutter/material.dart';

class SlidingDialog extends StatefulWidget {
  const SlidingDialog({super.key, required this.child});
  final Widget Function(SlidingDialogController) child;


  @override
  State<SlidingDialog> createState() => _SlidingDialogState();
}

class _SlidingDialogState extends State<SlidingDialog>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   final controller = SlidingDialogController(_animationController);
    return SlideTransition(
      position: _animation,
      child: Material(
        type: MaterialType.transparency,
        child: Align(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.95,
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: widget.child.call(controller),
          ),
        ),
      ),
    );
  }
}

class SlidingDialogObserver extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is DialogRoute &&
        route.settings.arguments is SlidingDialogController) {
      (route.settings.arguments! as SlidingDialogController).reverseAnimation();
    }
    super.didPop(route, previousRoute);
  }
}

class SlidingDialogController {
  SlidingDialogController(this._animationController);

  final AnimationController _animationController;

  Future<void> reverseAnimation() async {
    await _animationController.reverse();
  }

  Future<void> closeDialog(BuildContext context) async {
    final newContext = Navigator.of(context);
    await reverseAnimation();
    newContext.pop();
  }
}
