import 'package:rpac_fitness/Data/Category.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SelectedSubCategoryPage extends StatefulWidget {
  Category selectedSubCategory;
  SelectedSubCategoryPage({required this.selectedSubCategory});

  @override
  State<SelectedSubCategoryPage> createState() => _SelectedSubCategoryPageState();
}

class _SelectedSubCategoryPageState extends State<SelectedSubCategoryPage> {
  int selectedNumber = 0;
  Color containerColor = Colors.transparent;
  String selectedSubCategoryName = "";
  String roomName = "";
  List<bool> _isOpen = [];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(selectedSubCategoryName.toUpperCase(),
        style: TextStyle(color: Colors.white),),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        // Text(this.widget.selectedSubCategory.name),
      ),
      body:
      Stack(
        children:[
          generateRoomSpaces(),
          generateSlidingUpPanel(),
        ],
      ),
    );
  }

  BoxDecoration generateColor(bool state){
    Color seatColor = Colors.white;

    if ( state == false)  {
      seatColor = Colors.white24;
    }

    return BoxDecoration(color: seatColor);
  }

  Padding generateRoomSpaces() {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350,
        color: Colors.transparent,
        child: Column(
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(roomName,
                  style: TextStyle( fontSize: 20, color: Colors.white70),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 8,
                children: List.generate(_isOpen.length, (index1) {
                    return Flex(
                      direction: axisDirectionToAxis(AxisDirection.right),
                      children: [
                        Flexible(
                          child: ToggleButtons(
                            highlightColor: Colors.redAccent,
                            borderColor: Colors.white10,
                            borderRadius: BorderRadius.circular(100),
                            constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                            isSelected: [false],
                            onPressed: (int index2) {
                              setState(() {
                                selectedNumber = index1;
                                containerColor = Colors.redAccent;
                              });
                            },
                            children: [
                              getIcon(
                                _isOpen[index1], index1, containerColor,
                                selectedNumber,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }

  Container getIcon(
      bool available, int number, Color selectedColor, int selectedNumber) {
    Color containerColor = Colors.transparent;
    Color textColor = Colors.white;

    if (available == true) {
      if (selectedNumber == number) {
        containerColor = selectedColor;
      }
    } else {
      textColor = Colors.transparent;
    }

    return Container(
        color: containerColor,
        alignment: Alignment.center,
        width: 40,
        height: 40,
        child: Text(number.toString(), style: TextStyle(color: textColor)));
  }

  SlidingUpPanel generateSlidingUpPanel() {
    return SlidingUpPanel(
          defaultPanelState: PanelState.OPEN,
          maxHeight: 550.0,
          backdropEnabled: true,
          color: Colors.transparent,
          panel: Container(
            decoration:  BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.redAccent, width: 1,),
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  title: Text(this.widget.selectedSubCategory.name + " Schedules:",
                  style: TextStyle(fontSize: 15),),
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                ),
                body: ListView.builder(
                itemCount:this.widget.selectedSubCategory.scheduledTimes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSubCategoryName = this.widget.selectedSubCategory.scheduledTimes[index].name;
                        roomName = this.widget.selectedSubCategory.scheduledTimes[index].room;
                        _isOpen = this.widget.selectedSubCategory.scheduledTimes[index].isOpen;

                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    this.widget.selectedSubCategory.scheduledTimes[index].name,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  this.widget.selectedSubCategory.scheduledTimes[index].time,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  this.widget.selectedSubCategory.scheduledTimes[index].room,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  this.widget.selectedSubCategory.scheduledTimes[index].date,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
      ),
              ),
            ),
          ),
        );
  }
}

