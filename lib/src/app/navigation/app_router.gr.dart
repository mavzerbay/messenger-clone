// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:messenger_clone_flutter/src/app/pages/chats/chats_page.dart'
    as _i3;
import 'package:messenger_clone_flutter/src/app/pages/chats/subviews/chat_detail_page.dart'
    as _i2;
import 'package:messenger_clone_flutter/src/app/pages/dashboard/dashboard_page.dart'
    as _i1;
import 'package:messenger_clone_flutter/src/app/pages/login/login_page.dart'
    as _i4;
import 'package:messenger_clone_flutter/src/app/pages/register/register_page.dart'
    as _i5;
import 'package:messenger_clone_flutter/src/app/pages/splash_page.dart' as _i6;

/// generated route for
/// [_i1.CallsPage]
class CallsRoute extends _i7.PageRouteInfo<void> {
  const CallsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CallsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CallsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.CallsPage();
    },
  );
}

/// generated route for
/// [_i2.ChatDetailPage]
class ChatDetailRoute extends _i7.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i8.Key? key,
    required int chatId,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ChatDetailRoute.name,
          args: ChatDetailRouteArgs(
            key: key,
            chatId: chatId,
          ),
          rawPathParams: {'id': chatId},
          initialChildren: children,
        );

  static const String name = 'ChatDetailRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ChatDetailRouteArgs>(
          orElse: () => ChatDetailRouteArgs(chatId: pathParams.getInt('id')));
      return _i2.ChatDetailPage(
        key: args.key,
        chatId: args.chatId,
      );
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({
    this.key,
    required this.chatId,
  });

  final _i8.Key? key;

  final int chatId;

  @override
  String toString() {
    return 'ChatDetailRouteArgs{key: $key, chatId: $chatId}';
  }
}

/// generated route for
/// [_i3.ChatsPage]
class ChatsRoute extends _i7.PageRouteInfo<void> {
  const ChatsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ChatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChatsPage();
    },
  );
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i1.PeoplePage]
class PeopleRoute extends _i7.PageRouteInfo<void> {
  const PeopleRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PeopleRoute.name,
          initialChildren: children,
        );

  static const String name = 'PeopleRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.PeoplePage();
    },
  );
}

/// generated route for
/// [_i5.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.RegisterPage();
    },
  );
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPage();
    },
  );
}

/// generated route for
/// [_i1.StoriesPage]
class StoriesRoute extends _i7.PageRouteInfo<void> {
  const StoriesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          StoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'StoriesRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.StoriesPage();
    },
  );
}
