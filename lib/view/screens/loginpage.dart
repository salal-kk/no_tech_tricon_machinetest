import 'package:flutter/material.dart';

import 'package:notech_machine_test/view/screens/homepage.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String email='test@gmail.com';
  String password="12345";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 2,
              child: Image.asset("assets/images/loginimage.png",fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_circle_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'E mail',
                    helperText: 'Enter your Email',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'Password',
                    helperText: 'Enter your Password',
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                onPressed: () {
                  if (_emailController.text == email &&
                      _passwordController.text == password) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("The email & Password doesnot Match"),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.sign_language),
                label: const Text(
                  "SIGN IN",
                ),
              )
            ])
          ])),
    ));
  }
}
