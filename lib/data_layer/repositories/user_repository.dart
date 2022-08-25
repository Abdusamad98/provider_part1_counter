import 'package:provider_part1_counter/data_layer/models/user_data.dart';
import 'package:provider_part1_counter/data_layer/services/api_service.dart';

class UserRepository {
  Future<UserData> getUser() => ApiService.getUserData();
}
