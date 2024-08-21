import 'package:e_commerce/login_pages.dart/signin.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/login_pages.dart/signup.dart';
import 'package:e_commerce/login_pages.dart/ressetpassword2.dart';

class RessetPassword extends StatefulWidget {
  const RessetPassword({super.key});

  @override
  State<RessetPassword> createState() => _RessetPasswordState();
}

class _RessetPasswordState extends State<RessetPassword> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/login picture.png', height: 250, width: 250,),
          ),
           SizedBox(height: 35,),
        Text('Enter your email to reset your password.'),
        SizedBox(height: 30,),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text('Email'),
          )),
        Container(
        height: 40,
        width: 305,
        decoration: BoxDecoration(
         border: Border.all(
          color: Colors.black,
          width: 1,
         ), 
         borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'info@gmail.com',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        ),
         SizedBox(height: 100,),
        Container(
        height: 50,
        width: 305,
        decoration: BoxDecoration(
           color:Color.fromARGB(255, 38, 227, 199),
           borderRadius: BorderRadius.circular(10),
         ), 
         child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => RessetPassword2(),
                      ));
        },
        child: Center(child: Text('Reset', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
        
      ),
           
            ),
          ),
         
 
        ],
      ),
    );
  }
}