import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';
import 'package:e_commerce/payment_pages.dart/checkouts2.dart';
class Checkouts extends StatefulWidget {
  const Checkouts({super.key});

  @override
  State<Checkouts> createState() => _CheckoutsState();
}

class _CheckoutsState extends State<Checkouts> {
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
            Text('Hide List', style: TextStyle(color: Color.fromARGB(255, 32, 230, 183)),),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.025,),
             container3(text: 'Select the delivery option').build(context),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.045,),
              container3(text: 'Apply a discounts            ').build(context),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.063,),
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
            SizedBox(height: MediaQuery.sizeOf(context).height*0.005,),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Total price (3 iterms)'),
                   SizedBox(width: MediaQuery.sizeOf(context).height*0.161,),
                    Text('\$2499,97'),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.005,),
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
            SizedBox(height: MediaQuery.sizeOf(context).width*0.05,),
             Container(
            height: MediaQuery.sizeOf(context).height*0.055,
            width: MediaQuery.sizeOf(context).width*0.9,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 223, 187),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Color.fromARGB(255, 7, 223, 187),),
            ),
            child: Center(child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> Checkouts2()));
            }, child: Text('Select payment method',style: TextStyle(color: Colors.white),))),
          ),
        ],
      ),
 
 
    );
  }
}