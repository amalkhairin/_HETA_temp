import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/img/logo_app.png", fit: BoxFit.fitHeight),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    fillColor: Colors.grey[300],
                    border: InputBorder.none,
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.grey[300],
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 10,),
                TextButton(
                  onPressed: (){},
                  child: Text("Forgot Password"),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: (){},
                  child: Text("Sign In", style: TextStyle(color: Colors.white),),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Dont have an account? Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}