import 'package:flutter/foundation.dart';
import 'package:provider_part1_counter/data_layer/models/user_data.dart';
import 'package:provider_part1_counter/data_layer/repositories/user_repository.dart';

class UserModel extends ChangeNotifier {
  UserModel({required this.userRepository});

  final UserRepository userRepository;
  bool isLoading = false;

  int myCounter = 0;
  UserData? userData;

  void increment() {
    myCounter++;
    notifyListeners();
  }

  void fetUserData() async {
    isLoading = true;
    notifyListeners();
    userData = await userRepository.getUser();
    isLoading = false;
    notifyListeners();
  }
}
