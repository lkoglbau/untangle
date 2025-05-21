import 'package:flutter/material.dart';
import 'package:untangle_1/components/button.dart';
import 'package:untangle_1/components/register_typeIn_field.dart';

class RegisterPage extends StatelessWidget
{
  RegisterPage({super.key});


  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController(); 
  final TextEditingController confirmPasswordController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Logo und Text
            Icon(Icons.login, size: 50),
            SizedBox(height: 20),
            Text(
              "Welcome to Untangle",
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
            SizedBox(height: 20),


            //Register with Username and Password
            RegisterTypeinField(
              text: "Benutzername",
              controller: usernameController,
              obscureText: false,
            ),
            SizedBox(height: 40),
             RegisterTypeinField(
              text: "Passwort",
              controller: passwordController,
              obscureText: false,
            ),
            SizedBox(height: 10),
             RegisterTypeinField(
              text: "Passwort wiederholen",
              controller: confirmPasswordController,
              obscureText: false,
            ),
            
            SizedBox(height: 50),
            myButton(text: "Register now"),
            SizedBox(height: 50),
            //Already a member? Text
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
                    "Already a member?",
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
                

              //Login now Text
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {Navigator.pushNamed(context, '/login');},
                child: Text(
                  "Login now",
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