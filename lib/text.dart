import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) =>
    const MaterialApp(
      home: LoginPage()
    );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(context) =>
    Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            color: Colors.lightGreen[200],
            padding: constraints.maxWidth < 500 ? EdgeInsets.zero : const EdgeInsets.all(30.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0, horizontal: 25.0
                ),
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Welcome to the app, please log in"),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "username"
                      )
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "password"
                      )
                    ),
                    MaterialButton(
                      color: Colors.blue,
                      child: const Text("Log in", style: TextStyle(color: Colors.white)),
                      onPressed: () {} 
                    )
                  ]
                ),
              ),
            )
          );
        }
      )
   );
}