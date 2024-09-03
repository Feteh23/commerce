import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:e_commerce/login_pages.dart/authservice.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   final AuthService authService = AuthService();
  String? validatePassword(password) {
  // Minimum 8 characters, at least one uppercase letter, one lowercase letter, one number and one special character
  final RegExp passwordRegExp = RegExp(
    r'^(?=.[A-Z])(?=.[a-z])(?=.\d)(?=.[@$!%?&#])[A-Za-z\d@$!%?&#]{8,}$',
  );

  String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a password';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters long';
  }
  // Add more validation rules as needed...
  //return null; // If the password is valid, return null. 
}
  }
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  Future<void>_signup()async{
    setState(() {
      isLoading = true;
    });
    final String email = _emailController.text;
    final String password = _passwordController.text;
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:email ,
        password:password,
    );
    print('login successful');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('login successful',style: TextStyle(color: primaryColor),)),
    );
     Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Dashboard(),
                            ));
  } on FirebaseAuthException  catch (e){
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
  bool _isloading = false;
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             Image.asset('assets/signup picture.png', height: 250, width: 250,),
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
                       height: MediaQuery.sizeOf(context).height*0.02,
              width: MediaQuery.sizeOf(context).width*0.05,
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
                height: MediaQuery.sizeOf(context).height*0.053,
              width: MediaQuery.sizeOf(context).width*0.9,
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
                          child: TextFormField(
                            controller:_emailController,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none
                            ),
                            validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
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
                height: MediaQuery.sizeOf(context).height*0.053,
              width: MediaQuery.sizeOf(context).width*0.9,
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
                height: MediaQuery.sizeOf(context).height*0.053,
              width: MediaQuery.sizeOf(context).width*0.9,
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
                          child: TextFormField(
                            controller:_passwordController,
                            obscureText: !_isobscured,
                            validator: validatePassword,
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
         
                       SizedBox( height: MediaQuery.sizeOf(context).height*0.04,),
        
                        if(_isloading) 
                        CircularProgressIndicator(color: primaryColor,),
                        SizedBox( height: MediaQuery.sizeOf(context).height*0.04,),
            
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                     
                       height: MediaQuery.sizeOf(context).height*0.055,
                       width: MediaQuery.sizeOf(context).width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor,
                        boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                
                    )
                  ]
                      ),
                       child:TextButton(onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
        
                            try {
                              await authService.signUp(
                                _emailController.text,
                                _passwordController.text,
                              );
                              // Navigate to the home page or show success message
                            } catch (e) {
                              // Handle errors like email already in use
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Failed to sign up: $e')),
                              );
                            } finally {
                              setState(() {
                                isLoading = false;
                              });
                            }
                          }
                        },
                            child: Text('sign up', style: TextStyle(color:  Colors.white,),textAlign: TextAlign.right),
                            
                          ),
                    ),
            ),
          SizedBox(height: 45,),
         
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
                                Text('sign in', style: TextStyle(color: primaryColor,),textAlign: TextAlign.right),
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