import 'package:flutter/material.dart';
import 'package:hayaland/bloc/blocs/home_bloc.dart';

import 'constants/config.dart';
import 'views/home/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (ctx) => HomeBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
