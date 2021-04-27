import 'package:flutter/material.dart';
import 'database.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80,),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/img/logo_app.png", fit: BoxFit.fitHeight),
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: TextButton(
                      onPressed: (){},
                      child: Text("Forgot Password"),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                  onPressed: () async {
                    var result = await Database().loginUser(username: _usernameController.text, password: _passwordController.text);
                    if(result['success'] == true){
                      showDialog(
                        context: context, 
                        builder: (context){
                          return SimpleDialog(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.check_circle, size: 80, color: Colors.green,),
                                      SizedBox(height: 20,),
                                      Text("Login Success")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      );
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage())
                      );
                    } else {
                      showDialog(
                        context: context, 
                        builder: (context){
                          return SimpleDialog(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.cancel, size: 80, color: Colors.red,),
                                      SizedBox(height: 20,),
                                      Text("Login Failed")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 16.0, bottom: 16.0),
                    child: Container(
                      width: 200,
                      height: 30,
                      child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18),))
                    ),
                  ),
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