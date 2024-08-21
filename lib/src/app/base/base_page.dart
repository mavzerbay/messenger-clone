import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone_flutter/src/app/bloc/app_bloc.dart';
import 'package:messenger_clone_flutter/src/shared/extensions/context_extension.dart';

import 'bloc/base_bloc.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> {
  late final AppBloc appBloc = context.appBloc;

  late final B bloc = setBloc()..appBloc = appBloc;

  B setBloc();

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: buildPage(context),
    );
  }

  @protected
  Widget buildPage(BuildContext context);
}
