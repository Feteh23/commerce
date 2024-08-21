import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';

class Congrat extends StatelessWidget {
  const Congrat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
           // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.024,),
            Text('Payment Method', style: TextStyle(fontSize: 16),),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.25,),
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
               SizedBox(width: MediaQuery.sizeOf(context).width*0.21,),
            Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
              SizedBox(height: MediaQuery.sizeOf(context).width*0.01,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text('Select existing card', style: TextStyle(fontWeight: FontWeight.bold),),
              ),  
              SizedBox(height: MediaQuery.sizeOf(context).width*0.025,), 
                 Container(
            height: MediaQuery.sizeOf(context).height*0.055,
            width:MediaQuery.sizeOf(context).width*0.9,
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
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Icon(Icons.card_membership_outlined,  color: Colors.grey),
                      ),
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '**** **** **** 1934',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                       SizedBox(width: MediaQuery.sizeOf(context).height*0.1,),
                  Icon(Icons.delete_outline,size: 25, color: Colors.grey,)
                    ],
                  ),
                ),
              ],
            )),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).width*0.05,),
            Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),
             SizedBox(height: MediaQuery.sizeOf(context).width*0.02,), 
             Padding(
               padding: const EdgeInsets.only(right: 200),
               child: Column(
                 children: [
                   Text('Or input new card', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.sizeOf(context).width*0.015,), 
               Padding(
                 padding: const EdgeInsets.only(right: 40),
                 child: Text('Card number', style: TextStyle(color: Colors.grey, fontSize: 13),),
               )
                 ],
               ),
             ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.96,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210,),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only( left: 320),
                  child: Icon(Icons.close),
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
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Icon(Icons.book,  color: Colors.grey, size: 15,),
                      ),
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                     
                     Text('Order_invoice'),
                       SizedBox(width: MediaQuery.sizeOf(context).height*0.12,),
                  Icon(Icons.download,size: 25, color: Colors.grey,),
                    ],
                  ),
                ),
              ],
            )),
          ),
            SizedBox(height: MediaQuery.sizeOf(context).width*0.09,),
             Container(
            height: MediaQuery.sizeOf(context).height*0.055,
            width: MediaQuery.sizeOf(context).width*0.9,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 223, 187),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Color.fromARGB(255, 7, 223, 187),),
            ),
            child: Center(child: TextButton(onPressed: (){
            }, child: Text('Continue',style: TextStyle(color: Colors.white),))),
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}