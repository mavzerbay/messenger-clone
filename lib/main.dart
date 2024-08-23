import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/di/locator.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'application_config.dart';
import 'src/app/bloc/app_bloc.dart';
import 'src/app/navigation/app_router.dart';
import 'src/app/navigation/observer/app_navigator_observer.dart';

Future<void> main() async {
  await AppConfig.instance.config();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AppBloc>(),
      child: ReactiveFormConfig(
        validationMessages: {
          ValidationMessage.email: (_) =>
              'The value must be a valid email address',
          ValidationMessage.mustMatch: (_) =>
              'The value must match the previous one',
          'invalidPhoneNumber': (_) => 'The value must be a valid phone number',
          'invalidPassword': (_) =>
              'The password must be at least 8 characters long',
        },
        child: BlocBuilder<AppBloc, AppState>(
          buildWhen: (previous, current) =>
              previous.isDarkMode != current.isDarkMode,
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Messenger Clone',
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                final MediaQueryData data = MediaQuery.of(context);

                return MediaQuery(
                  data: data.copyWith(
                    textScaler: const TextScaler.linear(1.0),
                  ),
                  child: Scaffold(
                    body: BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) =>
                          previous.showLoading != current.showLoading,
                      builder: (context, state) {
                        return Stack(
                          children: [
                            child ?? const SizedBox.shrink(),
                            if (state.showLoading)
                              _CustomLoader(state.loadingMessage),
                          ],
                        );
                      },
                    ),
                  ),
                );
              },
              routerDelegate: router.delegate(
                navigatorObservers: () => [AppNavigatorObserver()],
              ),
              routeInformationParser: router.defaultRouteParser(),
              themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
              theme: ThemeData(
                useMaterial3: true,
                brightness: Brightness.light,
                colorSchemeSeed: Colors.blue[900],
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              darkTheme: ThemeData(
                useMaterial3: true,
                brightness: Brightness.dark,
                colorSchemeSeed: Colors.blue[200],
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CustomLoader extends StatelessWidget {
  const _CustomLoader(this.message);

  final String? message;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        decoration: BoxDecoration(
          color: context.primaryColor.withOpacity(.5),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.primary.withOpacity(.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Card(
              shadowColor: context.colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator.adaptive(),
                    if (message != null && message!.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Text(
                        message!,
                        textAlign: TextAlign.center,
                      ),
                    ]
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
