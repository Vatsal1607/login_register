import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      Text('Sign Up',
                      style: TextStyle(
                        fontSize: 35),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      TextFormField(
                        validator: (value){
                          if(value!.length <= 3){
                            return 'Please enter some values';
                          } if (value!.isEmpty){
                            return 'Please enter valid name';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Name'
                        ),
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
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      TextFormField(
                        validator: (value){
                          if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9+\.[a-zA-Z]+").hasMatch(value!)){
                            return 'Please enter valid Address';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
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

                      TextFormField(
                        validator: (value){
                          if(value!.length <= 6 || value!.length >=16){
                            return 'Enter Password between 6 to 16 character';
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'Password',
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
                              print('Doneiiii');
                            } else {
                              print('Something is Wrong');
                            }
                          }, child: Text('Submit')
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
                          fontSize: 35
                        ),)
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
