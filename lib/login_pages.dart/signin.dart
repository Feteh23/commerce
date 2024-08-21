import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';
import 'package:e_commerce/login_pages.dart/ressetpassword.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isobscured=false;
  bool _istouched=false;
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Image.asset('assets/login picture.png', height: 250, width: 250,),
          Padding(
              padding: const EdgeInsets.only(left:25 , right: 25),
              child: Container(
                height: 35,
                width: double.infinity,
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
                      Icon(Icons.phone, size: 20,),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
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
                height: 35,
                width: double.infinity,
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
                        SizedBox( height: 40,),
            
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                      padding: EdgeInsets.all(6),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 38, 227, 199),
                          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 2),
              
                  )
                ]
                        
                      ),
                       child:TextButton(onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Dashboard(),
                              ));
                            },
                            child: Text('sign in', style: TextStyle(color:  Colors.white,),textAlign: TextAlign.right),
                            
                          ),
                    ),
            ),
          SizedBox(height: 100,),
        
          TextButton(onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Signup(),
                            ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                  Text("Don't have an account?", style: TextStyle(color: Colors.black),),
                                Text('sign up', style: TextStyle(color: Color.fromARGB(255, 38, 227, 199),),textAlign: TextAlign.right),
                              ],
                            ),
                          ),
                          
                        ),
        ],
      ),
    );
  }
}