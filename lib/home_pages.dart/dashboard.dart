

import 'package:flutter/material.dart';
import 'package:e_commerce/home_pages.dart/account.dart';
import 'package:e_commerce/home_pages.dart/history.dart';
import 'package:e_commerce/home_pages.dart/home.dart';
import 'package:e_commerce/home_pages.dart/wishlist.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashboard> {
  int _currentIndex=0;
  void NavigateBottomBar(int index){
    setState(() {
      _currentIndex=index;
    
    });
  }
  final List<Widget> _pages =[
Home(),
Wishlist(),
History(),
Account()
  ];
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(166, 165, 165, 0.5), 
        onTap: NavigateBottomBar,
        currentIndex: _currentIndex,
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: 'Home', backgroundColor: Colors.grey[150]),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded, color: Colors.grey,), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_books_outlined, color: Colors.grey,), label: 'History'  ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined, color: Colors.grey,), label: 'Account'  ),

          

        ],
         
        ),
         resizeToAvoidBottomInset: true,
    );
  }
}