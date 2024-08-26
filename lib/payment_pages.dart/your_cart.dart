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
 Checkcontainers(logo: 'assets/white head phone.jpg', text: 'Air pods max by apple', word:'variant: Grey', text2:'\$1999,99'),
            SizedBox(height: MediaQuery.sizeOf(context).width*0.05,),
            Checkcontainers(logo: 'assets/tv.jpg', text: 'Monitor LG 22" inc 4k 120Fps', word:'variant:120Fps', text2:'\$299,99'),
            SizedBox(height: MediaQuery.sizeOf(context).width*0.05,),
            Checkcontainers(logo: 'assets/brown head phone.jpg', text: 'Earphones for monitor', word:'variant: Combo', text2:'\$199,99'),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.25,),
                   Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Totals'),
                   SizedBox(width: MediaQuery.sizeOf(context).height*0.12,),
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
       resizeToAvoidBottomInset: true,
    );
  }
}