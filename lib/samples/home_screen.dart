import 'package:flutter/material.dart';
import 'package:provider_part1_counter/samples/data_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestScreen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return DataScreen(
                    myStringListener: (value) {
                      print("My VAlUE:$value");
                    },
                  );
                },
              ),
            );
          },
          child: Text("Press"),
        ),
      ),
    );
  }
}
