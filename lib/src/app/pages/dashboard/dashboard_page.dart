import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

import '../../bloc/app_bloc.dart';
import '../../navigation/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatefulWidget implements AutoRouteWrapper {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardBloc()
        ..appBloc = context.appBloc
        ..add(const DashboardEvent.started()),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (previous, current) =>
            previous.isHubConnectionStarted != current.isHubConnectionStarted,
        builder: (context, state) {
          return this;
        },
      ),
    );
  }
}

class _DashboardPageState extends State<DashboardPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        context
            .read<DashboardBloc>()
            .add(const DashboardEvent.updateActiveStatus(true));
        break;
      default:
        context
            .read<DashboardBloc>()
            .add(const DashboardEvent.updateActiveStatus(false));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ChatsRoute(),
        CallsRoute(),
        PeopleRoute(),
        StoriesRoute(),
      ],
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          title: Text(
            tabsRouter.current.name,
          ),
          actions: [
            // dark / light mode toggle
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return IconButton(
                  icon: Icon(
                      state.isDarkMode ? Icons.light_mode : Icons.dark_mode),
                  onPressed: () =>
                      context.appBloc.add(const AppEvent.toggleThemeMode()),
                );
              },
            ),

            // sign out
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () =>
                  context.appBloc.add(const AppEvent.signOut(isForce: false)),
            ),
          ],
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          showUnselectedLabels: true,
          selectedItemColor: context.colorScheme.primary,
          unselectedItemColor: context.colorScheme.onSurface,
          selectedLabelStyle: context.textTheme.bodySmall,
          unselectedLabelStyle: context.textTheme.bodySmall,
          items: const [
            BottomNavigationBarItem(
              tooltip: 'Chats',
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              tooltip: 'Calls',
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              tooltip: 'People',
              icon: Icon(Icons.people),
              label: 'People',
            ),
            BottomNavigationBarItem(
              tooltip: 'Stories',
              icon: Icon(Icons.sticky_note_2),
              label: 'Stories',
            ),
          ],
        );
      },
    );
  }
}

@RoutePage()
class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Calls'));
  }
}

@RoutePage()
class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Stories'));
  }
}
