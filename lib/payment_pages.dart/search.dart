import 'package:e_commerce/home_pages.dart/wishlist.dart';
import 'package:flutter/material.dart';





class Search extends StatefulWidget {
  @override
  _SearchDeleteScreenState createState() => _SearchDeleteScreenState();
}

class _SearchDeleteScreenState extends State<Search> {
  List<String> items = [
    'Iphone 12 pro max',
    'Camera fujifilm',
    'Tripod Mini',
    'Bluetooth speaker',
    'Drawin pad',
  ];

  List<String> filteredItems = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredItems = items; // Initially display all items
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query))
          .toList();
    });
  }

  void _deleteItem(String item) {
    setState(() {
      items.remove(item);
      filteredItems.remove(item); // Also remove from filtered list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 50,
        title: Row(
          children: [
            Expanded(
              child: Container(
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
                    controller: _searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
                  ],
                ),
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
      body: Column(
        children: [
         Divider(
            thickness: 1, 
           color: Colors.grey[200],
          ), 
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Last Search', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.52,),
                Text('clear all', style: TextStyle(fontSize: 13, color: Colors.red),)
              ],
            ),
          ) ,
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                final item = filteredItems[index];
                return ListTile(
                  leading: Icon(Icons.timelapse_outlined),
                  title: Text(item),
                  trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => _deleteItem(item),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}