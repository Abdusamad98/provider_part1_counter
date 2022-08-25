import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_part1_counter/view_model_layer/user_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<UserModel>().fetUserData();
            },
            icon: const Icon(Icons.get_app),
          )
        ],
      ),
      body: Center(
        child: Consumer<UserModel>(
          builder: (context, userModelInstance, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              userModelInstance.userData == null
                  ? const Text("User data hali kelmadi")
                  : Text(userModelInstance.userData.toString()),
              const Text('You have pushed the button this many times:'),
              Text(
                '${userModelInstance.myCounter}',
                style: Theme.of(context).textTheme.headline4,
              ),
              userModelInstance.isLoading
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UserModel>().increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
