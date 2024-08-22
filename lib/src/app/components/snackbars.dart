import 'package:flutter/material.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

class Snackbars {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> success(
    BuildContext context,
    String message, {
    String title = 'Success',
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      const Color(0xff22C55E),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> info(
    BuildContext context,
    String message, {
    String title = 'Info',
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      const Color(0xff17a2b8),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> error(
    BuildContext context,
    String message, {
    String title = 'Error',
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      const Color(0xffF44336),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> warning(
    BuildContext context,
    String message, {
    String title = 'Warning',
    Duration? duration,
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      const Color(0xffFFC107),
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
    BuildContext context,
    String message, {
    String title = 'Info',
    Duration? duration,
    Color backgroundColor = const Color(0xff17a2b8),
  }) {
    final snackbar = _buildSnackbar(
      title,
      context,
      message,
      duration,
      backgroundColor,
    );

    return ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static SnackBar _buildSnackbar(
    String title,
    BuildContext context,
    String message,
    Duration? duration,
    Color backgroundColor,
  ) {
    return SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle_outline,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  message,
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      duration: duration ?? const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
