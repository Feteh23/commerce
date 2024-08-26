import 'package:e_commerce/payment_pages.dart/checkouts.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Your_Cart2 extends StatefulWidget {
  const Your_Cart2({super.key});

  @override
  State<Your_Cart2> createState() => _Your_Cart2State();
}

class _Your_Cart2State extends State<Your_Cart2> {
  bool _ischecked = false;
   bool _istouched = false;
    bool _isfelt = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Order Summary', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).height*0.26,),
                Icon(Icons.arrow_drop_up),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Totals'),
                   SizedBox(width: MediaQuery.sizeOf(context).height*0.29,),
                    Text('\$2499,97'),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).width*0.02,),
             Container(
            height: MediaQuery.sizeOf(context).height*0.055,
            width: MediaQuery.sizeOf(context).width*0.9,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: primaryColor,),
            ),
            child: Center(child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Checkouts()));
            }, child: Text('Select payment method',style: TextStyle(color: Colors.white),))),
          ),
        ],
      ),
  resizeToAvoidBottomInset: true,
    );
  }
}