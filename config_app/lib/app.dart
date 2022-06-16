import 'package:config_app/home/page/home_page.dart';
import 'package:config_app/splash/bloc/splash_bloc.dart';
import 'package:config_app/splash/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config_repository.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.configRepository}) : super(key: key);

  final ConfigRepository configRepository;

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //       title: 'Flutter Bloc',
    //       initialRoute: '/splash',
    //       routes: {
    //         '/splash': (_) => SplashPage(),
    //         '/': (_) => HomePage()
    //       },
    //     );
    return RepositoryProvider(
      create: (context) => configRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => SplashBloc(
              configRepository: configRepository,
            )..add(
                SplashStarted(),
              ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Bloc',
          initialRoute: '/splash',
          routes: {
            '/splash': (_) => SplashPage(),
            '/': (_) => HomePage(),
          },
        ),
      ),
    );
  }
}
