import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_saver/UI/home/cubit/home_page_cubit.dart';
import 'package:receipt_saver/UI/home/home_page.dart';
import 'package:receipt_saver/UI/receipts/receipts_page.dart';
import 'package:receipt_saver/UI/store/store_page.dart';

import 'UI/sign in/cubit/signin_page_cubit.dart';
import 'UI/sign in/signin_page.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    if (name == HomePage.routeName) {
      return route(
        BlocProvider(
          create: (context) => HomePageCubit(
              // receiptsRepository: RepositoryProvider.of<ReceiptsRepository>(context),
              ),
          child: const HomePage(),
        ),
      );
    }

    if (name == SignInPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => SigninPageCubit(
            email: '',
            password: '',
          ),
          child: const SignInPage(),
        ),
      );
    }

    if (name == ReceiptsPage.routeName) {
      return route(
        const ReceiptsPage(),
      );
    }

    if (name == StorePage.routeName) {
      return route(
        const StorePage(),
      );
    }

    return route(_errorRoute(settings));
  }
}

Widget _errorRoute(RouteSettings settings) {
  return Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: const Text("Error"),
      centerTitle: true,
    ),
    body: const Center(
      child: Text("Error"),
    ),
  );
}
