import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/repository/auth_repository.dart';
import 'package:greengrocer/src/pages/auth/result/auth_result.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();

  Future<void> singIn({required String email, required String password}) async {
    isLoading.value = true;

    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;

    result.when(
      success: (user) {
        print(user);
      },
      error: (mesage) {
        print(mesage);
      },
    );
  }
}
