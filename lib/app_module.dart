import 'package:flutter_app_tester/auth_guard.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_app_tester/login.dart';
import 'package:flutter_app_tester/my_home.dart';
import 'package:flutter_app_tester/second_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/',
        child: (context) => const MyHomePage(
              title: 'My Home Page',
            ));
    r.child('/second',
        child: (context) => const SecondPage(), guards: [AuthGuard()]);
    r.child('/login', child: (context) => const LoginPage());
  }
}
