import 'package:flutter/material.dart';
import 'package:messenger_clone_flutter/src/app/navigation/app_router.dart';

class Snackbars {
  static void showSuccess(
      {String title = 'Success', String message = '', SnackBarAction? action}) {
    final messengerState =
        ScaffoldMessenger.maybeOf(router.navigatorKey.currentContext!);
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      _getSnackbar(title, message, Colors.green, action),
    );
  }

  static void showError(
      {String title = 'Error', String message = '', SnackBarAction? action}) {
    final messengerState =
        ScaffoldMessenger.maybeOf(router.navigatorKey.currentContext!);
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      _getSnackbar(title, message, Colors.red, action),
    );
  }

  static void showInfo(
      {String title = 'Info', String message = '', SnackBarAction? action}) {
    final messengerState =
        ScaffoldMessenger.maybeOf(router.navigatorKey.currentContext!);
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      _getSnackbar(title, message, Colors.blue, action),
    );
  }

  static void showWarning(
      {String title = 'Warning', String message = '', SnackBarAction? action}) {
    final messengerState =
        ScaffoldMessenger.maybeOf(router.navigatorKey.currentContext!);
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      _getSnackbar(title, message, Colors.orange, action),
    );
  }

  static SnackBar _getSnackbar(
      String title, String message, Color color, SnackBarAction? action) {
    return SnackBar(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            message,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: color,
      action: action,
      duration: const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      margin: const EdgeInsets.all(10.0),
    );
  }
}
