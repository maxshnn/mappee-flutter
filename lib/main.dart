import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mappee/core/di.dart' as di;
import 'package:mappee/presentation/routing/routing.dart';

import 'core/di.dart';
import 'presentation/screens/auth/bloc/auth_bloc.dart';

void main() {
  di.init();
  runApp(Mappee());
}

class Mappee extends StatelessWidget {
  Mappee({super.key});
  final _appRouter = AppRoute();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(injection())..add(CheckTokenEvent()),
      child: SafeArea(
        child: CupertinoApp.router(
          title: 'Mappee',
          theme: const CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(
                fontFamily: 'Manrope',
              ),
            ),
          ),
          routerDelegate: AutoRouterDelegate(_appRouter),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, child) => child!,
        ),
      ),
    );
  }
}
