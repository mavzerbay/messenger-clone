import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.style,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: SizedBox(
        width: isLoading ? 50 : double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: style,
          child: isLoading ? const CircularProgressIndicator.adaptive() : child,
        ),
      ),
    );
  }
}
