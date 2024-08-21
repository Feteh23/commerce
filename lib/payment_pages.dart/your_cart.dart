import 'package:e_commerce/payment_pages.dart/your_cart2.dart';
import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class your_cart extends StatefulWidget {
  const your_cart({super.key});

  @override
  State<your_cart> createState() => _your_cartState();
}

class _your_cartState extends State<your_cart> {
  bool _ischecked= false;
   bool _istouched= false;
    bool _isfelt= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.05,),
            Text('Your Cart', style: TextStyle(fontSize: 16),),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),
                Stack(children: [
               IconButton(onPressed: (){}, icon:  Icon(Icons.shopping_cart_outlined),),
                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 20),
                  child: CircleAvatar(child: Text('2', style: TextStyle(color: Colors.white, fontSize: 9),), radius: 6, backgroundColor: Colors.red,),
                ),
              ],),
          ],
        ),
      ),
      body: Column(
        children: [
            Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),  
           SizedBox(height: MediaQuery.sizeOf(context).width*0.01,),   
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Delivery'),
              ),
               SizedBox(width: MediaQuery.sizeOf(context).width*0.21,),
               Text('Salatiga City, Central Java'),
               Icon(Icons.arrow_drop_down),
                
            ],
           ),
           SizedBox(width: MediaQuery.sizeOf(context).width*0.21,),
            Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          _ischecked = !_ischecked;
                        });
                      }, icon:Icon(_ischecked? Icons.check_box : Icons.check_box_outline_blank, color: _ischecked? Color.fromARGB(255, 4, 218, 182): Colors.grey, size: 30,)),
                      container1(logo: 'assets/white head phone.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                   Row(
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          _istouched = !_istouched;
                        });
                      }, icon:Icon(_istouched? Icons.check_box : Icons.check_box_outline_blank, color: _istouched? Color.fromARGB(255, 4, 218, 182): Colors.grey, size: 30,)),
                      container1(logo: 'assets/tv.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                   Row(
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          _isfelt = !_isfelt;
                        });
                      }, icon:Icon(_isfelt? Icons.check_box : Icons.check_box_outline_blank, color: _isfelt? Color.fromARGB(255, 4, 218, 182): Colors.grey, size: 30,)),
                      container1(logo: 'assets/brown head phone.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                    ],
                  ),
                ],
              ),
            ) ,
             SizedBox(height: MediaQuery.sizeOf(context).height*0.3,),
                   Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Totals'),
                   SizedBox(width: MediaQuery.sizeOf(context).height*0.32,),
                    Text('\$00,0'),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).width*0.02,),
            Container(
            height: MediaQuery.sizeOf(context).height*0.055,
            width: MediaQuery.sizeOf(context).width*0.9,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 218, 218),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Color.fromARGB(255, 191, 190, 190)),
            ),
            child: Center(child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Your_Cart2()));
            }, child: Text('Continue for Payments',style: TextStyle(color: Colors.black),))),
          ),
        ],
      ),
    );
  }
}