import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  static const String title = "Авторизация";
  static const String textButton = "Регистрация или вход";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AuthScreen.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Имя пользователя'),
            )),
              SizedBox(height: 16,),
              SizedBox(
                width: 250,
                child: TextField(
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Пароль'),
              )),
              SizedBox(height: 32,),
              OutlinedButton(onPressed: (){}, child: Text(AuthScreen.textButton), )
          ],
        ),
      ),
    );
  }
}
