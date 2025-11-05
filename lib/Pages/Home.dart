import 'package:flutter/material.dart';
import 'package:rpac_fitness/Pages/square.dart';
import 'package:rpac_fitness/Data/Utils.dart';
import 'package:rpac_fitness/Data/Category.dart';

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        title:Image.asset(
          /*'images/O-Logo.png'*/'images/Rec-Sports.png',
          fit: BoxFit.contain,
          height: 40,
        ),
        actions: [
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset(
                'images/Profile-Photo.png',fit: BoxFit.contain,),
            ),
          )
        ],

      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return MySquare(
            child1: categories[index].name,
            child2: index,
            onCardClick: ()  {

        }
        );
      },
    );
  }
}