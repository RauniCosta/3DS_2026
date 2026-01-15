import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //SafeArea evita que elementos do sistema operacional interfiram na interface
      child: Scaffold(
        //Scaffold é a estrutura base de uma tela
        backgroundColor: const Color(0xFFF0C8C8),
        body: Container(
          width: double.infinity,
          //Container é um widget de layout que pode conter outros widgets
          child: Column(
            //Column organiza seus filhos em uma coluna vertical
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 150, 
                height: 150, 
                color: Colors.amber
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                color: Colors.blue,
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                child: 
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
