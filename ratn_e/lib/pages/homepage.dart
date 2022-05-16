import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratn_e/modals/catalog.dart';
import 'package:ratn_e/widgets/drawer.dart';
import 'package:ratn_e/widgets/items_widgit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // to add json in website
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    //print(decodedData);
    var productsData = decodedData["items"];
    // it gives list but our class is also list
//    List<Item> list = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});

//   print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    // int a = 40;
    // var name = "Ratnesh";
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "New Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // body: Center(
        //   child: Container(
        //     child: Text(
        //       "welcome to $a days of flutter by $name kr",
        //       style: TextStyle(
        //           color: Colors.black,
        //           backgroundColor: Colors.deepOrange,
        //           fontSize: 20),
        //     ),
        //   ),
        // ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shadowColor: Colors.black,
                      elevation: 4.0,
                      child: ItemWidget(
                        item: CatalogModel.items[index],
                      ),
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
