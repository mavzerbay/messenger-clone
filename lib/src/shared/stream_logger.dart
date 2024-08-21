import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

extension StreamExt<T> on Stream<T> {
  Stream<T> log(
    String name, {
    bool logOnListen = false,
    bool logOnData = false,
    bool logOnError = false,
    bool logOnDone = false,
    bool logOnCancel = false,
  }) {
    final logger = Logger(
      printer: PrettyPrinter(),
    );
    return doOnListen(() {
      if (kDebugMode || logOnListen) {
        logger.d(
          '▶️ $name onSubscribed ',
          time: DateTime.now(),
        );
      }
    }).doOnData((event) {
      if (kDebugMode || logOnData) {
        logger.d('🔵 $name onEvent : $event', time: DateTime.now());
      }
    }).doOnCancel(() {
      if (kDebugMode || logOnCancel) {
        logger.d('🟡 $name onCanceled ', time: DateTime.now());
      }
    }).doOnError((e, _) {
      if (kDebugMode || logOnError) {
        logger.e(
          '🔴 $name onError ',
          error: e,
          stackTrace: _,
          time: DateTime.now(),
        );
      }
    }).doOnDone(() {
      if (kDebugMode || logOnDone) {
        logger.d(
          '🟢 $name onCompleted',
          time: DateTime.now(),
        );
      }
    });
  }
}
