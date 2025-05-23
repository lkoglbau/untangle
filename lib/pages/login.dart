import 'package:flutter/material.dart';
import 'package:untangle_1/components/button.dart';
import 'package:untangle_1/components/register_typeIn_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo und Text
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset("img/untangle_logo.png", height: 100),
            ),

            //Log in with Username and Password
            RegisterTypeinField(
              text: "Benutzername",
              controller: usernameController,
              obscureText: false,
            ),
            SizedBox(height: 10),
            RegisterTypeinField(
              text: "Passwort",
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 10),

            //Forgot Password? Text
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),
            myButton(text: "Login", pfad: "/home"),
            SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[800],
                    height: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "not a member yet?",
                    style: TextStyle(color: Colors.grey[700], fontSize: 17),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[800],
                    height: 50,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  "Register now",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
