import 'package:e_commerce/resources.dart';
import 'package:flutter/material.dart';


class Payment_Method extends StatefulWidget {
  const Payment_Method({super.key});

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
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
      body: Column(
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
                      
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '1234 1234 1234 1234',
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                       SizedBox(width: MediaQuery.sizeOf(context).height*0.03), 
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/Visa.png',height: MediaQuery.sizeOf(context).height*0.06,width: MediaQuery.sizeOf(context).width*0.06),
                        SizedBox(width: MediaQuery.sizeOf(context).height*0.02,), 
                        Image.asset('assets/Master.png',height: MediaQuery.sizeOf(context).height*0.06,width: MediaQuery.sizeOf(context).width*0.06),
                      ],
                    ),
                  ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.015), 
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text('Exp date', style: TextStyle(color: Colors.grey, fontSize: 13),),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                  container6(text:'mm/yy').build(context),
                ],
              ),
              SizedBox(width: MediaQuery.sizeOf(context).height*0.015,), 
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text('Security Code', style: TextStyle(color: Colors.grey, fontSize: 13),),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                  container6(text:'cc/csv').build(context),
                ],
              ),
            ],
          ),
         SizedBox(height: MediaQuery.sizeOf(context).width*0.02,), 
               Padding(
                 padding: const EdgeInsets.only(right: 230),
                 child: Text('Card number', style: TextStyle(color: Colors.grey, fontSize: 13),),
               ) ,
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
                      
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter card holder name',
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                       SizedBox(width: MediaQuery.sizeOf(context).height*0.03), 
                 
                    ],
                  ),
                ),
              ],
            )),
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.13,),
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
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: primaryColor,),
            ),
            child: Center(child: TextButton(onPressed: (){
             ShowCongrat(context);
            }, child: Text('Select payment method',style: TextStyle(color: Colors.white),))),
          ), 
        ],
      ),
       resizeToAvoidBottomInset: true,
    );
  }
}