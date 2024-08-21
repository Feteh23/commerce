import 'package:flutter/material.dart';
import 'package:e_commerce/resources.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Row(
          children: [
            //Icon(Icons.arrow_back),
            //SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
            Container(
              height: 35,
              width: MediaQuery.sizeOf(context).width*0.70,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color.fromARGB(255, 209, 208, 208)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
       
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Icon(Icons.search, size: 30, color: Colors.grey,),
                   ),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.06,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search hear...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
                ],
              ),
            ),
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
          children: [
                      Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Search results for "ear phones"'),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.13,),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color.fromARGB(255, 225, 221, 221)),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Expanded(child: Text('Filters', style: TextStyle(fontSize: 14),)),
                          Icon(Icons.filter_alt_outlined),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.013,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  mediumcontainer(logo: 'assets/white head phone.jpg', text: 'Earphones for monitor', word: '\$199.99').build(context),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
              mediumcontainer(logo: 'assets/ear pieace.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
                ],
              ),
            ),
             SizedBox(height: MediaQuery.sizeOf(context).height*0.013,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  mediumcontainer(logo: 'assets/ear pot 2.jpg', text: 'Earphones for monitor', word: '\$199.99').build(context),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
              mediumcontainer(logo: 'assets/ear pot.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
                ],
              ),
            ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.013,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  mediumcontainer(logo: 'assets/white head phone.jpg', text: 'Earphones for monitor', word: '\$199.99').build(context),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
              mediumcontainer(logo: 'assets/brown head phone.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}