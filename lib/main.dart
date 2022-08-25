import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_part1_counter/data_layer/repositories/user_repository.dart';
import 'package:provider_part1_counter/presentation/my_home_page.dart';
import 'package:provider_part1_counter/view_model_layer/user_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserModel(userRepository: UserRepository()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
