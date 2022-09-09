import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register_exam/signUpPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: formKey,
          child: Stack(
            children: [
              Container(
                color: Colors.blue[100],
              ),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text('Login',
                      style: TextStyle(
                        fontSize: 35),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      CircleAvatar(
                        radius: 80,
                        foregroundImage: AssetImage('images/Black_panther.jpg'),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      TextFormField(
                        validator: (value){
                          if(value!.length != 10){
                            return 'Number is not correct';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      ElevatedButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              print('Doneiiii pencho');
                            } else {
                              print('Something is wrong');
                            }
                          },
                          child: Text('Submit')
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUpPage()),
                          );
                        },
                        child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 35),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
