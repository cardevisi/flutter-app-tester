import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super();

  bool isLoggedIn = false;

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    print('debug canActivate');

    if (!isLoggedIn) {
      // Redirect to Login Page
      Modular.to.navigate('/login');
    }
    return isLoggedIn;
  }
}
