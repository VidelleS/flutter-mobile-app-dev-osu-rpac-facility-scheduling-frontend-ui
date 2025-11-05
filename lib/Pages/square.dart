import 'package:flutter/material.dart';
import 'package:rpac_fitness/Data/Category.dart';
import 'package:rpac_fitness/Data/Utils.dart';
import 'package:rpac_fitness/Pages/selectedcategorypage.dart';

class MySquare extends StatefulWidget {
  final String child1;
  int child2;
  Function onCardClick;


  MySquare({
    required this.child1, required this.child2, required this.onCardClick
  });

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  List<Category> categories = Utils.getMockedCategories();
  List<Category> subcategories = Utils.getMockedCategories()[0].subCategories;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              //SelectedCategoryPage.pageName,
              MaterialPageRoute(builder: (context) => SelectedCategoryPage(
                selectedCategory: this.categories[widget.child2],
              )
              )
          );
        },
        child: Container(
          height: 200,
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                    'images/' + categories[widget.child2].imgName + '.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(

                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.redAccent.withOpacity(0.7),
                        Colors.transparent,
                      ]
                    )
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Text(
                      categories[widget.child2].name,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}
