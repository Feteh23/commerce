import 'package:e_commerce/login_pages.dart/signin.dart';
import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RessetPassword2 extends StatefulWidget {
  const RessetPassword2({super.key});

  @override
  State<RessetPassword2> createState() => _RessetPassword2State();
}

class _RessetPassword2State extends State<RessetPassword2> {
   final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void>_signin()async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email:_emailController.text, 
        password:_passwordController.text,
    );
  }  catch (e){
    print('Login failed');
    }
  }
  bool _ischecked=false;
  bool _isobscured=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
            Text('Resset Password', style: TextStyle(fontSize: 20),),
            
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            Image.asset('assets/ressetpassword2 picture.png', height: 250, width: 250,),
             SizedBox(height: 15,),
          Text('Enter new password to reset your Password', textAlign: TextAlign.center,),
           SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Text('New Password'),
          ),
         Container(
         height: MediaQuery.sizeOf(context).height*0.053,
            width: MediaQuery.sizeOf(context).width*0.9,
          decoration: BoxDecoration(
           border: Border.all(
            color: Colors.black,
            width: 1,
           ), 
           borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:1, left: 25),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      obscureText: !_isobscured,
                      decoration: InputDecoration(
                        hintText: '************',
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
                    }, icon: Icon(_isobscured? Icons.visibility_off : Icons.visibility)),
              ],
            ),
          ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 190.0),
            child: Text('Confirm Password'),
          ),
          Container(
         height: MediaQuery.sizeOf(context).height*0.053,
            width: MediaQuery.sizeOf(context).width*0.9,
          decoration: BoxDecoration(
           border: Border.all(
            color: Colors.black,
            width: 1,
           ), 
           borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:1, left: 25),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                       controller:_passwordController,
                      obscureText: !_ischecked,
                      decoration: InputDecoration(
                        hintText: '************',
                        border: InputBorder.none, 
                      ),
                    ),
                  ),
                ),
                               SizedBox(width: 100,),
                    IconButton(onPressed: (){
                      setState(() {
                        _ischecked = !_ischecked;
                      });
                    }, icon: Icon(_ischecked? Icons.visibility_off : Icons.visibility)),
              ],
            ),
          ),
          ),
          
           SizedBox(height: 55,),
          Container(
         height: MediaQuery.sizeOf(context).height*0.06,
            width: MediaQuery.sizeOf(context).width*0.9,
          decoration: BoxDecoration(
             color:primaryColor,
             borderRadius: BorderRadius.circular(10),
           ), 
           child: Padding(
            padding: const EdgeInsets.all(8.0),
             child: TextButton(onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Dashboard(),
                        ));
          },
          child: Center(child: Text('Reset Password', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
          
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