import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

import '../../bloc/app_bloc.dart';
import '../../navigation/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('People'));
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
