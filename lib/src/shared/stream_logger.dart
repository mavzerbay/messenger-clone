import 'package:flutter/foundation.dart';
import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:talker_flutter/talker_flutter.dart';

extension StreamExt<T> on Stream<T> {
  Stream<T> log(
    String name, {
    bool logOnListen = false,
    bool logOnData = false,
    bool logOnError = false,
    bool logOnDone = false,
    bool logOnCancel = false,
  }) {
    final logger = locator<Talker>();

    return doOnListen(() {
      if (kDebugMode || logOnListen) {
        logger.debug(
          '▶️ $name onSubscribed ',
        );
      }
    }).doOnData((event) {
      if (kDebugMode || logOnData) {
        logger.debug('🔵 $name onEvent : $event');
      }
    }).doOnCancel(() {
      if (kDebugMode || logOnCancel) {
        logger.debug('🟡 $name onCanceled ');
      }
    }).doOnError((e, st) {
      if (kDebugMode || logOnError) {
        logger.error(
          '🔴 $name onError ',
          e,
          st,
        );
      }
    }).doOnDone(() {
      if (kDebugMode || logOnDone) {
        logger.debug(
          '🟢 $name onCompleted',
        );
      }
    });
  }
}
