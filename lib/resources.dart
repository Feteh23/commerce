import 'dart:ffi';

import 'package:e_commerce/home_pages.dart/dashboard.dart';
import 'package:e_commerce/payment_pages.dart/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/payment_pages.dart/your_cart.dart';
import 'package:e_commerce/payment_pages.dart/your_cart2.dart';
import 'package:e_commerce/payment_pages.dart/checkouts.dart';
import 'package:e_commerce/payment_pages.dart/checkouts3.dart';


 final Color primaryColor = Color.fromARGB(255, 68, 177, 144);

class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  
  bool _ischecked = false;
  bool _istouched = false;
  bool _isfelt = false;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Bigcontainer {
  final String image;
Bigcontainer({required this.image,
    
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Container(
        height: screenH*0.17,
        width: screenW*0.78,
        child: Image(image: AssetImage(image), fit: BoxFit.fill,),
      );
    }
}
class Smallcontainer {
  final String logo;
  final String text;
Smallcontainer({
  required this.logo,
 required this.text,
    
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.06,
            width: screenW*0.11,
            child: Image(image: AssetImage(logo), fit: BoxFit.fill,),
          ),
          Text(text, style: TextStyle(fontSize: 12, color: Colors.grey),)
        ],
      );
    }
}
class mediumcontainer {
  final String logo;
  final String text;
  final String word;
mediumcontainer({
  required this.logo,
 required this.text,
  required this.word,  
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.15,
            width: screenW*0.41,
            child: Image(image: AssetImage(logo), fit: BoxFit.fill,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          Text(text, style: TextStyle(fontSize: 13, color: Colors.black),),
          Text(word, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          SizedBox(height: screenH*0.01,),
          
        Container(
       height: screenH*0.038,

       width:screenW*0.4,
       decoration:BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
       ) ,
       child: Center(child: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> your_cart()));
       }, child: Text('Add to Cart', style: TextStyle(color: Colors.white),))),
        )
        ],
      );
    }
}
class Small2container {
  final Color light;
Small2container({
 required this.light,
    
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.05,
            width: screenW*0.16,
            decoration: BoxDecoration(
              color: light,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          
        ],
      );
    }
}
class container2 {
  final Color light;
  final String text;
container2({
 required this.light,
required this.text,  
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.055,
            width: screenW*0.42,
            decoration: BoxDecoration(
              color: light,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> your_cart()));
            }, child: Text(text,style: TextStyle(color: Colors.black),))),
          ),
          
        ],
      );
    }
}

void ShowDialog(BuildContext context){
  showModalBottomSheet(context: context, isScrollControlled:true, builder: (context){
    return Container(
        height: MediaQuery.sizeOf(context).height*0.42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
        ),
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,),
                      child: Text('Select the delivery', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                     SizedBox(width: MediaQuery.sizeOf(context).height*0.24,),
                      IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Checkouts()));
                }, icon: Icon(Icons.close),)
                     
                  ],
                ),
              ),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
               container5(text: 'Express', word: '1-3 days delivery', text2: '\$14,99').build(context),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
               container5(text: 'Regular', word: '2-4 days delivery', text2: '\$7,99').build(context),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
               container5(text: 'Cargo', word: '7-14 days delivery', text2: '\$2,99').build(context),
            ],
           ),
    );

    
  }
  
  );
}
void ShowCongrat(BuildContext context){
  showModalBottomSheet(context: context, isScrollControlled:true, builder: (context){
    return Container(
      height: MediaQuery.sizeOf(context).height*0.6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
        ),
      child: Stack(
          children: [
          
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only( left: 320),
                    child:  IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Payment_Method()));
                }, icon: Icon(Icons.close),),
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.04,), 
                   Image.asset('assets/star.jpg',height: MediaQuery.sizeOf(context).height*0.18,),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.04,), 
                   Text('Congratulations your payment',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('is successfully',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                     SizedBox(height: MediaQuery.sizeOf(context).width*0.035,), 
                   Text('Track your order or just chat directly to the ',style: TextStyle(fontSize: 13,color: Colors.grey ),),
                    Text('seller. Download order summary in down below',style: TextStyle(fontSize: 13, color: Colors.grey),),
                    SizedBox(height: MediaQuery.sizeOf(context).width*0.055,), 
                   Container(
              height: MediaQuery.sizeOf(context).height*0.055,
              width:MediaQuery.sizeOf(context).width*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Color.fromARGB(255, 211, 210, 210)),
              ),
              child: Center(child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 2),
                          child: Icon(Icons.sim_card,  color: Colors.black, size: 15,),
                        ),
                         SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                       
                       Text('Order_invoice'),
                         SizedBox(width: MediaQuery.sizeOf(context).height*0.12,),
                    Icon(Icons.download,size: 25, color: Colors.black,),
                      ],
                    ),
                  ),
                ],
              )),
                        ),
              SizedBox(height: MediaQuery.sizeOf(context).width*0.09,),
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Container(
                             height: MediaQuery.sizeOf(context).height*0.055,
                             width: MediaQuery.sizeOf(context).width*0.9,
                             decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: primaryColor,),
                             ),
                             child: Center(child: TextButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Dashboard()));
                             }, child: Text('Continue',style: TextStyle(color: Colors.white),))),
                           ),
               ),
                ],
              ),
            ),
          ],
        ),
    );
 
  }
  
  );
}
class container3 {
  final String text;
container3({
required this.text, 
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.055,
            width: screenW*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Color.fromARGB(255, 211, 210, 210)),
            ),
            child: Center(child: Row(
              children: [
                TextButton(onPressed: (){

                }, child: Text(text,style: TextStyle(color:Color.fromARGB(255, 211, 210, 210)),)),
                 SizedBox(width: MediaQuery.sizeOf(context).height*0.12,),
                IconButton(onPressed: (){
                  ShowDialog(context);
                }, icon: Icon(Icons.arrow_forward_ios,size: 15,))
              ],
            )),
          ),
          
        ],
      );
    }
}
class container4 {
  final String logo;
  final String text;
  final String word;
  final String text2;
container4({
  required this.logo,
 required this.text,
  required this.word,
  required this.text2,  
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Row(
        children: [
        Container(
            height: screenH*0.07,
            width: screenW*0.20,
            child: Image(image: AssetImage(logo), fit: BoxFit.fill,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
           SizedBox(width: MediaQuery.sizeOf(context).width*0.021,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 165),
                child: Text(word, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
              ),
               Padding(
                 padding: const EdgeInsets.only(right: 240),
                 child: Text(text, style: TextStyle(fontSize: 11, color: Colors.grey),),
               ),
         Padding(
          padding: const EdgeInsets.only(right: 85),
          child: Row(
            children: [
                Padding(
            padding: const EdgeInsets.only(right:60),
            child: Text(text2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width*0.17,),
        Text('1 Quality', style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
        
 
            ],
          ),
        //  SizedBox(width: screenW*0.05,),
          
              ],
      );
                
    }
}
class container5 {
  final String text;
  final String word;
   final String text2;
container5({
required this.text, 
required this.word, 
required this.text2, 
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Container(
            height: screenH*0.08,
            width: screenW*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 248, 245, 245)
            ),
            child: Center(child: Row(
              children: [
                TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Checkouts3()));
                }, child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text(text,style: TextStyle(color:Color.fromARGB(255, 0, 0, 0), fontSize: 15),),
                    ),
                    Row(
                      children: [
                        Text(word, style: TextStyle(fontSize: 12, color: Colors.black),),
                        SizedBox(width: MediaQuery.sizeOf(context).height*0.2,),
                         Text(text2, style: TextStyle(fontSize: 15, color: Colors.black),),
                      ],
                    )
                  ],
                )),
                 
              ],
            )),
          ),
          
        ],
      );
    }
}
class container6 {
  final String text;
container6({
required this.text, 
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: screenH*0.055,
              width: screenW*0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Color.fromARGB(255, 211, 210, 210)),
              ),
              child:Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                hintText: text,
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                                border: InputBorder.none
                              ),
                            ),
                          ),
            ),
          ),
          
        ],
      );
    }
}
class container7 {
  final String text;
  final String style;
container7({
required this.text,
required this.style, 
    });
    Widget build(BuildContext context){
      final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
      return Column(
        children: [
           Padding(
              padding: const EdgeInsets.only(left:25 , right: 25),
              child: Container(
                height: screenH*0.05,
                width: screenW*0.79,
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
                  child: Expanded(
                    child: Row(
                      children: [
                       Icon(Icons.style),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: text,
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
            ),
            
        ],
      );
    }
}
class Checkcontainers extends StatefulWidget {
  
   final String logo;
  final String text;
  final String word;
  final String text2;

  Checkcontainers({
   required this.logo,
 required this.text,
  required this.word,
  required this.text2,
  });
  @override
  State<Checkcontainers> createState() => _CheckcontainersState();
}

class _CheckcontainersState extends State<Checkcontainers> {
  int _counter = 1;
  void _decrementCounter (){
    setState(() {
      if(_counter > 1){
        _counter--;
      }
    });
  }
  void _incrementCounter (){
    setState(() {
      _counter++;
    });
  }
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
   final screenH = MediaQuery.sizeOf(context).height;
      final screenW = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(onPressed: (){
            setState(() {
              _ischecked = !_ischecked;
            });
          }, icon: Icon(_ischecked? Icons.check_box : Icons.check_box_outline_blank, color: _ischecked? primaryColor:Colors.grey, size: 30,)),
          Container(
            height: screenH*0.11,
            width: screenW*0.24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage(widget.logo), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width*0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.word),
              Row(
                children: [
                  Text(widget.text2, style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){
                    _decrementCounter();
                  }, child: Text('-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                  Text('$_counter'),
                  TextButton(onPressed: (){
                    _incrementCounter();
                  }, child: Text('+')),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,size: 20,)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}