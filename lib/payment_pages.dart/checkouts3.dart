import 'package:e_commerce/payment_pages.dart/search.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';
import 'package:e_commerce/payment_pages.dart/checkouts4.dart';
class Checkouts3 extends StatefulWidget {
  const Checkouts3({super.key});

  @override
  State<Checkouts3> createState() => _Checkouts3State();
}

class _Checkouts3State extends State<Checkouts3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
            Text('Checkouts', style: TextStyle(fontSize: 16),),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.36,),
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
      body: Stack(
        children: [
           Column(
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
                child: Text('Delivery to'),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                       
                        container4(logo: 'assets/white head phone.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                      ],
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                     Row(
                      children: [
                        container4(logo: 'assets/tv.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                      ],
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).width*0.06,),
                     Row(
                      children: [
                        container4(logo: 'assets/brown head phone.jpg', text: 'Variant: Grey', word: 'Air pods max by Apple', text2: '\$1999,9').build(context),
                      ],
                    ),
                  ],
                ),
              ),
            ) ,
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
            Text('Hide List', style: TextStyle(color: primaryColor),),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.025,),
             container3(text: 'Regular (2-4 days delivery)',).build(context),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.025,),
             Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.025,),
              container3(text: 'Apply a discounts            ').build(context),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.063,),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 450),
        child: Container(
          height: MediaQuery.sizeOf(context).height*0.28,
          decoration: BoxDecoration(
           // borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white
          ),
        ),
      ),
SizedBox(height: MediaQuery.sizeOf(context).width*0.05,),
            Padding(
              padding: const EdgeInsets.only(top: 460, left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Order Summary', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.sizeOf(context).height*0.27,),
                      Icon(Icons.arrow_drop_up),
                    ],
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.005,),
                  Row(
                    children: [
                      Text('Total price (3 items)'),
                      SizedBox(width: MediaQuery.sizeOf(context).height*0.18,),
                      Text('\$2499,97'),
                    ],
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.005,),
                  Row(
                    children: [
                      Text('Courier'),
                      SizedBox(width: MediaQuery.sizeOf(context).height*0.32,),
                       Text('\$7,99'),
                    ],
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.005,),
                  Row(
                    children: [
                      Text('Maketplace fee'),
                      SizedBox(width: MediaQuery.sizeOf(context).height*0.25,),
                      Text('\$1,23'),
                    ],
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).width*0.005,),
                  Row(
                    children: [
                      Text('Totals'),
                      SizedBox(width: MediaQuery.sizeOf(context).height*0.3,),
                      Text('\$2499,97'),
                    ],
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 590, left: 20),
               child: Container(
                           height: MediaQuery.sizeOf(context).height*0.055,
                           width: MediaQuery.sizeOf(context).width*0.9,
                           decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: primaryColor,),
                           ),
                           child: Center(child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Checkouts4()));
                           }, child: Text('Select payment method',style: TextStyle(color: Colors.white),))),
                         ),
             ),
        ],
      ),
       resizeToAvoidBottomInset: true,
    );
  }
}