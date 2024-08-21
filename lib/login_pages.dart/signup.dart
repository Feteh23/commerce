import 'package:flutter/material.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signin.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}
bool _isobscured=false;
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
            Text('Sign Up', style: TextStyle(fontSize: 20),),
            
          ],
        ),
      ),
      body: Column(
        children: [
           Image.asset('assets/login picture.png', height: 250, width: 250,),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:25 , right: 25),
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
            
                )
              ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:25 , top:5 ),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      ),
                     child:   Icon(Icons.person, color: Colors.white, size: 15,),
                    ),
                     SizedBox(width: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
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
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
            
                )
              ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Icon(Icons.email, size: 25,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                
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
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
            
                )
              ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Icon(Icons.phone, size: 20,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  
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
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2),
            
                )
              ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Icon(Icons.lock, size: 25,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none
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
       
                      SizedBox( height: 40,),
          
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
                   
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 38, 227, 199),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
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
                          child: Text('sign up', style: TextStyle(color:  Colors.white,),textAlign: TextAlign.right),
                          
                        ),
                  ),
          ),
        SizedBox(height: 50,),
       
        TextButton(onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => SignIn(),
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Row(
                            children: [
                               Text("Don't have an account?", style: TextStyle(color: Colors.black),),
                              Text('sign in', style: TextStyle(color:   Color.fromARGB(255, 38, 227, 199),),textAlign: TextAlign.right),
                            ],
                          ),
                        ),
                        
                      ),
        ],
      ),

      );
    
  }
}