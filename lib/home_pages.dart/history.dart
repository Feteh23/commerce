import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.165,),
            Text('Details Product', style: TextStyle(fontSize: 16),),
             SizedBox(width: MediaQuery.sizeOf(context).width*0.165,),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Container(
                height: MediaQuery.sizeOf(context).height*0.30,
            //    width: ,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/white head phone.jpg'), fit: BoxFit.fill),
                ),
              ) , 
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,) ,
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text('Air pods max by Apple'),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('\$19999,99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('219 people buy this'),
            ),
        SizedBox(width: MediaQuery.sizeOf(context).width*0.2,),
        CircleAvatar(
          child: Icon(Icons.favorite_outline, color: Colors.grey,),radius: 20, backgroundColor: Colors.grey[200],
        )
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Padding(
                padding: const EdgeInsets.only(right: 204),
                child: Text('Choose the color', style: TextStyle(color: Colors.grey),),
        
              ),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Small2container(light: Color.fromARGB(255, 243, 223, 230)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                    Small2container(light: Color.fromARGB(255, 205, 205, 205)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                    Small2container(light: Color.fromARGB(255, 207, 232, 207)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                    Small2container(light: Color.fromARGB(255, 200, 227, 249)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                    Small2container(light: Color.fromARGB(255, 34, 34, 34)).build(context),
                
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.011,),
                  ],
                
                
                ),
              ),
                Divider(
              thickness: 1, 
             color: Colors.grey[200],
            ),  
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                   Container(
                
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(2, 19, 42, 0.56),
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Icon(Icons.apple,size: 25,color: Color.fromARGB(255, 13, 22, 27),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 8),
                     child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Text('Apple Store',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Text('Oline 12 mins ago',style: TextStyle(fontSize: 11, color: Colors.grey),),
                      ],
                     ),
                   ),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.3,),
                   Container(
                    height: 35,
                    width: MediaQuery.sizeOf(context).width*0.2,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextButton(onPressed: (){}, child: Text('Follow', style: TextStyle(color: Colors.black, fontSize: 14),)),
                   ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.011,),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text('Description of product', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.008,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text('lorem ipsum dolor amet, consectetur adipiscing elit Aliqurt id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque vivera ipsum orci, morbi septem. nulla bibendum pursu tempo semperpurus. ut curabitur platea sed blandit.',style: TextStyle(fontSize: 12),),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: container2(light: Color.fromARGB(255, 241, 238, 238), text: 'Add to cart',).build(context),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                  container2(light: Color.fromARGB(255, 241, 238, 238), text: 'Buy Now',).build(context),
                ],
              ),
              
          ],
        ),
      ),
 resizeToAvoidBottomInset: true,
    );

  }
}