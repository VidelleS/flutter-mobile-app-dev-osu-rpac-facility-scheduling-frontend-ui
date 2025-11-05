import 'package:flutter/material.dart';
import 'package:rpac_fitness/Data/Category.dart';
import 'package:rpac_fitness/Data/Utils.dart';
import 'package:rpac_fitness/Pages/selectedsubcategorypage.dart';

class SelectedCategoryPage extends StatefulWidget {

  Category selectedCategory;
  SelectedCategoryPage({required this.selectedCategory});

  @override
  State<SelectedCategoryPage> createState() => _SelectedCategoryPageState();
}

class _SelectedCategoryPageState extends State<SelectedCategoryPage> {
  //List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(this.widget.selectedCategory.name.toUpperCase(),
        style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: this.widget.selectedCategory.subCategories.length,
        itemBuilder: (context, index) {
         return GestureDetector(
           onTap: () {
             Navigator.push(
                 context,
                 //SelectedCategoryPage.pageName,
                 MaterialPageRoute(builder: (context) => SelectedSubCategoryPage(
                   selectedSubCategory: this.widget.selectedCategory.subCategories[index],
                 )
                 )
             );
           },
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                  height: 200,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'images/' + this.widget.selectedCategory.subCategories[index].imgName + '.jpg',
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
                                    Colors.black.withOpacity(0.7),
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
                              this.widget.selectedCategory.subCategories[index].name,
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
        },
      ),
    );
  }
}
