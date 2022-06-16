import 'package:config_app/home/page/home_page.dart';
import 'package:config_app/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

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
              Color.fromARGB(255, 236, 148, 166),
              Color(0xFF6A82FB),
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 90.0),
        child: Column(
          children: [
            Spacer(),
            Image.network(
              "https://www.boeschbodenspies.com/wp-content/uploads/2017/08/orange.png",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 20,
            ),
            BlocConsumer<SplashBloc, SplashState>(
              listener: (context, state) async {
                if (state is SplashLoaded) {
                  await Future.delayed(Duration(milliseconds: 1000));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is SplashInitial) {
                  return Text(
                    "Loading",
                    style: TextStyle(fontSize: 25),
                  );
                }
                if (state is SplashLoaded) {
                  return Text(
                    "Done",
                    style: TextStyle(fontSize: 25),
                  );
                }
                if (state is SplashError) {
                  return Text(
                    "Error",
                    style: TextStyle(fontSize: 25),
                  );
                }
                return Text(
                  "Error",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
