import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';

class Checkouts2 extends StatefulWidget {
  const Checkouts2({super.key});

  @override
  State<Checkouts2> createState() => _Checkouts2State();
}

class _Checkouts2State extends State<Checkouts2> {
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
             container3(text: 'Select the delivery option').build(context),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.045,),
              container3(text: 'Apply a discounts            ').build(context),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.063,),
              
              
        ],
      ),
      Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.15),
          
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 340),
        child: Container(
          height: MediaQuery.sizeOf(context).height*0.42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
          ),
          ),
      ),
       SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
           Padding(
             padding: const EdgeInsets.only(top: 360),
             child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Select the delivery', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                     SizedBox(width: MediaQuery.sizeOf(context).height*0.24,),
                     Icon(Icons.close),
                  ],
                ),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                 container5(text: 'Express', word: '1-3 days delivery', text2: '\$14,99').build(context),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                 container5(text: 'Regular', word: '2-4 days delivery', text2: '\$7,99').build(context),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                 container5(text: 'Cargo', word: '7-14 days delivery', text2: '\$2,99').build(context),
              ],
                       ),
           ),
                   ],
      ),
       resizeToAvoidBottomInset: true,
    );
  }
}
