import 'package:greengrocer/src/models/user_model.dart';
import 'package:greengrocer/src/services/http_manager.dart';

import '../../../consts/consts_app.dart';
import '../../../consts/endpoints.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future signIn({required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signIn,
      method: HttpMethods.post,
      body: {
        "email": email,
        "password": password,
      }
    );
    if(result['result'] != null){
      print('foi');

      final user = UserModel.fromJson(result['result']);

      print(user);
    }
    else{
      print('Não foi');
      print(result['error']);
      print(email);
      print(password);
    }
  }
}
