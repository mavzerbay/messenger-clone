import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/pages/dashboard/bloc/dashboard_bloc.dart';

@RoutePage()
class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          BoxScrollView child = ListView(
            children: const [
              Center(
                child: CircularProgressIndicator.adaptive(),
              )
            ],
          );

          if (!state.isFriendsLoading) {
            child = ListView.builder(
              itemCount: state.friends.length,
              itemBuilder: (context, index) {
                final friend = state.friends[index];
                return ListTile(
                  title: Text(friend.firstName),
                  subtitle: Text(friend.email),
                );
              },
            );
          }

          return RefreshIndicator(
              child: child,
              onRefresh: () {
                final Completer<void> completer = Completer<void>();

                context
                    .read<DashboardBloc>()
                    .add(DashboardEvent.onFriendsRefresh(completer));

                return completer.future;
              });
        },
      ),
    );
  }
}
