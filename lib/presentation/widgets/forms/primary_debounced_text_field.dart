import 'dart:async';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';

class PrimaryDebouncedTextField extends StatefulWidget {
  const PrimaryDebouncedTextField({
    super.key,
    required this.onChanged,
    this.controller,
    this.hintText,
    this.padding,
    this.suffixIcon,
  });
  final void Function(String) onChanged;
  final String? hintText;
  final double? padding;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  @override
  State<PrimaryDebouncedTextField> createState() =>
      _PrimaryDebouncedTextFieldState();
}

class _PrimaryDebouncedTextFieldState extends State<PrimaryDebouncedTextField> {
  Timer? _debounceTimer;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _handleOnChange(String value) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(const Duration(milliseconds: 1500), () {
      widget.onChanged(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      controller: widget.controller,
      onChanged: _handleOnChange,
      hintText: widget.hintText,
      padding: widget.padding,
      suffixIcon: widget.suffixIcon,
    );
  }
}
