import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({
    super.key,
    required this.child,
    this.scrollContentOnResized = false,
  });
  final Widget child;
  final bool scrollContentOnResized;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: scrollContentOnResized ? ScrollableContent(child: child) : child,
    );
  }
}

class ScrollableContent extends StatelessWidget {
  const ScrollableContent({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constrains.maxHeight,
          ),
          child: child,
        ),
      ),
    );
  }
}
