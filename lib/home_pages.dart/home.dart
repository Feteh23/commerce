import 'package:e_commerce/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      toolbarHeight: 70,
      title:  Column(
        children: [
          Padding(
            
            padding: const EdgeInsets.only(right: 230,top: 10),
            child: Text('Delivery address', style: TextStyle(color: Colors.grey, fontSize: 11),),
          ),
          Row(
            children: [
              Text('Salatiga City, Central Java', style: TextStyle(fontSize: 15),),
              Icon(Icons.arrow_drop_down),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.0001,),
              Stack(children: [
               IconButton(onPressed: (){}, icon:  Icon(Icons.shopping_cart_outlined),),
                Padding(
                  padding: const EdgeInsets.only(top: 7, left: 20),
                  child: CircleAvatar(child: Text('2', style: TextStyle(color: Colors.white, fontSize: 9),), radius: 6, backgroundColor: Colors.red,),
                ),
              ],),
             
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined),)
            ],
          )
        ],
      ),
     ),
     body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20 , right:20 ),
            child: Container(
              height: 35,
              width: double.infinity,
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
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
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
          ),
         
          SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Bigcontainer(image: 'assets/card.jpg').build(context),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.015,),
                  Bigcontainer(image: 'assets/card.jpg').build(context),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Text('Category', style: TextStyle(fontWeight: FontWeight.w400),),
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Row(
              children: [
                Smallcontainer(logo: 'assets/clothes.jpg', text: 'Apperel').build(context),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.053,),
             Smallcontainer(logo: 'assets/rulers.jpg', text: 'School').build(context),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.053,),
             Smallcontainer(logo: 'assets/ball.jpg', text: 'Sports').build(context),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.053,),
             Smallcontainer(logo: 'assets/tele.jpg', text: 'Electronics').build(context),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.053,),
             Smallcontainer(logo: 'assets/buttons.jpg', text: 'All').build(context),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.053,),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.013,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Recent Product'),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),
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
                mediumcontainer(logo: 'assets/tv.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
                 SizedBox(width: MediaQuery.sizeOf(context).width*0.014,),
            mediumcontainer(logo: 'assets/cup.jpg', text: 'Aestechic Mug -white...', word: '\$199.99').build(context),
              ],
            ),
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.016,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                mediumcontainer(logo: 'assets/ear pot.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
                 SizedBox(width: MediaQuery.sizeOf(context).width*0.014,),
            mediumcontainer(logo: 'assets/console.jpg', text: 'Monitor LG 22"inc 4k..', word: '\$199.99').build(context),
              ],
            ),
          ),
        ],
       ),
     ),
      resizeToAvoidBottomInset: true,
    );
  }
}