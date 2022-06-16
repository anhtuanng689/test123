import 'package:config_app/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color.fromARGB(255, 245, 248, 156),
              Color.fromARGB(255, 232, 211, 172),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              BlocBuilder<SplashBloc, SplashState>(
                builder: (context, state) {
                  if (state is SplashLoaded) {
                    if (state.config.delicous) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.access_alarm,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Delicous",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      );
                    }
                  }
                  return SizedBox.shrink();
                },
              ),
              BlocBuilder<SplashBloc, SplashState>(
                builder: (context, state) {
                  if (state is SplashLoaded) {
                    if (state.config.good) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.access_alarm,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Good",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      );
                    }
                  }
                  return SizedBox.shrink();
                },
              ),
              BlocBuilder<SplashBloc, SplashState>(
                builder: (context, state) {
                  if (state is SplashLoaded) {
                    if (state.config.cheap) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.access_alarm,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Cheap",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      );
                    }
                  }
                  return SizedBox.shrink();
                },
              ),
              BlocBuilder<SplashBloc, SplashState>(
                builder: (context, state) {
                  if (state is SplashLoaded) {
                    if (state.config.all) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.access_alarm,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "All",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      );
                    }
                  }
                  return SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
