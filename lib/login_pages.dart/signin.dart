import 'dart:math';

import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';
import 'package:e_commerce/login_pages.dart/ressetpassword.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:e_commerce/login_pages.dart/authservice.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void>_login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;
    setState(() {
      _isloading=true;
      void dispose() {
        _emailController.dispose();
        _passwordController.dispose();
        super.initState();
      }
    });
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, 
        password: password,
    );
      print('login successful');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('login successful: ${e}',style: TextStyle(color: primaryColor),)),
      );
       Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Dashboard(),
                            ));
                            
    
   }
   on FirebaseAuthException  catch (e){
        ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('login failed: ${e.message}',style: TextStyle(color: Colors.red),)),
    );
  }  
    finally{
      setState(() {
        _isloading = false;
      });
    }
  }
  bool _isobscured=false;
  bool _istouched=false;
  bool _isloading=false;
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
            Text('Sign in', style: TextStyle(fontSize: 20),),
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/login picture.png', height: 250, width: 250,),
            Padding(
                padding: const EdgeInsets.only(left:25 , right: 25),
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.053,
              width: MediaQuery.sizeOf(context).width*0.9,
                  decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                
                    )
                  ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 5),
                    child: Row(
                      children: [
                        Icon(Icons.email, size: 20,),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Email Address',
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ),
              ),
              
                 SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left:25 , right: 25),
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.053,
              width: MediaQuery.sizeOf(context).width*0.9,
                  decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                
                    )
                  ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.lock_clock_rounded),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextField(
                              controller:_passwordController,
                              obscureText: !_isobscured,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 100,),
                        IconButton(onPressed: (){
                          setState(() {
                            _isobscured = !_isobscured;
                          });
                        }, icon: Icon(_isobscured? Icons.visibility : Icons.visibility_off)),
                      ],
                    ),
                  ),
                  
                ),
              ),
              TextButton(onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => RessetPassword(),
                              ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Text('Forgot your password?',style: TextStyle(color: Colors.black),),
                            ),           
                          ),
                          SizedBox( height: MediaQuery.sizeOf(context).height*0.04,),
                          
              if(_isloading)
              CircularProgressIndicator( color: primaryColor,),
               SizedBox( height: MediaQuery.sizeOf(context).height*0.02,),
              Container(
                
                      padding: EdgeInsets.all(6),
                      height: MediaQuery.sizeOf(context).height*0.065,
                      width: MediaQuery.sizeOf(context).width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor,
                          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 2),
              
                  )
                ]
                        
                      ),
                       child:TextButton(onPressed: () async {
                await authService.signIn(
                  _emailController.text,
                  _passwordController.text,
                );
              },
                            child: Text('sign in', style: TextStyle(color:  Colors.white,),textAlign: TextAlign.right),
                            
                          ),
                    ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.07,),
          
            TextButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Signup()));
               } ,  child: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                    Text("Don't have an account?", style: TextStyle(color: Colors.black),),
                                  Text('sign up', style: TextStyle(color: primaryColor,),textAlign: TextAlign.right),
                                ],
                              ),
                            ),
                            
                          ),
          ],
        ),
      ),
       resizeToAvoidBottomInset: true,
    );
  }
}