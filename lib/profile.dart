import 'package:flutter/material.dart';
import 'package:profile/theme/colors.dart';
import 'package:profile/util/activity_history.dart';
//import 'package:profile/util/bottom_navigation_bar_json.dart';
import 'package:profile/util/history_images_json.dart';
//import 'package:profile/util/save_history.dart';
import 'package:floating_action_row/floating_action_row.dart';
import 'package:profile/util/save_history.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    /*   var sidebar = List<FloatingActionRowChild>();
    sidebar.add(
      FloatingActionRowButton(
        icon: Icon(Icons.shopping_bag_rounded),
        color: Colors.black,
        onTap: () {},
      ),
    );
    sidebar.add(
      FloatingActionRowDivider(),
    );
    sidebar.add(
      FloatingActionRowButton(
        icon: Icon(Icons.file_copy_rounded),
        color: Colors.black,
        onTap: () {},
      ),
    ); */

    var children = List<FloatingActionRowChild>();
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.home_outlined),
        color: Colors.black,
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.arrow_drop_down_circle_sharp),
        color: Colors.black,
        onTap: () {},
      ),
    );
    children.add(
      FloatingActionRowDivider(),
    );
    children.add(
      FloatingActionRowButton(
        icon: Icon(Icons.account_circle_outlined),
        color: Colors.black,
        onTap: () {},
      ),
    );

    return Scaffold(
      /* floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(),
        label: Text('Add Note'),
        onPressed: () {
          var children = List<FloatingActionRowChild>();
          children.add(
            FloatingActionRowButton(
              icon: Icon(Icons.shopping_bag),
              color: Colors.black,
              onTap: () {},
            ),
          );
          children.add(
            FloatingActionRowDivider(),
          );
          children.add(
            FloatingActionRowButton(
              icon: Icon(Icons.file_copy),
              color: Colors.black,
              onTap: () {},
            ),
          );
          print('FloatingActionButton clicked');
        },
      ), */

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionRow(
        children: children,
        color: Colors.white,
        elevation: 6,
      ),

      appBar: AppBar(
        title: Text(
          "Name",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontFamily: 'SFProText', color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Image(
            image: AssetImage("assets/images/Arrow - Left 2_1.png"),
          ),
        ),
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              child: Image(
                image: AssetImage("assets/images/Send_1.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              child: Image(
                image: AssetImage("assets/images/Notification_1.png"),
              ),
            ),
          ),
        ],
      ),
      body: getBody(size),
      //bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: (size.width - 20) * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: bgGrey),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/ProfilePic.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: (size.width - 20) * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "61",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Follwers",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Near",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Chang Klan",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 85),
                    child: GestureDetector(
                      child: Image(
                        image: AssetImage("assets/images/Setting_1.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: (size.width - 20) * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "61",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Container(
                height: 150,
                width: (size.width - 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgLightGrey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 35),
                        Text(
                          "700k",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Deal Done",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 35),
                        Text(
                          "240k",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "THB",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                        Text(
                          "SAVE/MONTH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Account',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 0.5,
          width: size.width,
          //decoration: BoxDecoration(color: bgGrey.withOpacity(0.8)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
        ),
        SizedBox(height: 3),
        IndexedStack(
          children: [
            getHistory(size),
          ],
        ),
      ],
    );
  }

  Widget getHistory(size) {
    return Wrap(
        alignment: WrapAlignment.end,
        direction: Axis.vertical,
        spacing: 40,
        runSpacing: 20,
        //children: List.generate(activity.length, (index) {
        children: List.generate(save.length, (index) {
          //saveList
          return Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    'SAVE',
                    textAlign: TextAlign.left,
                    //overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SFProText',
                        color: Colors.black),
                  ),
                  Row(children: [
                    SizedBox(height: 30),
                    Text(
                      save[index]['amount'],
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "THB",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 30),
                    Text(
                      save[index]['time'],
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Min",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                    ),
                    Text(
                      save[index]['distance'],
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Mile",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 30),
                    Text(
                      save[index]['dateTime'],
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ]),
                ]),
            margin: EdgeInsets.only(
              left: 100.0,
              right: 20.0,
            ),
            height: 150,
            width: (size.width - 6) / 2,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover),
            ),
          );

          //activity List
          /* return Container(
            margin: EdgeInsets.only(
              left: 45.0,
              right: 20.0,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text(
                    activity[index]['activity'],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    activity[index]['address'],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SFProText',
                        color: Colors.black),
                  ),
                  Row(children: [
                    SizedBox(width: 30),
                    Text(
                      save[index]['time'],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: Colors.grey),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Min",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: Colors.grey),
                      textAlign: TextAlign.right,
                    ),
                  ]),
                  Row(children: [
                    SizedBox(width: 30),
                    Text(
                      save[index]['dateTime'],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: Colors.grey),
                      textAlign: TextAlign.right,
                    ),
                  ]),
                  Row(children: [
                    SizedBox(width: 30),
                    Text(
                      activity[index]['Joiner'],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: Colors.black),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Joiner",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SFProText',
                          color: Colors.black),
                    ),
                  ]),
                  Icon(Icons.arrow_downward_rounded),
                ]),
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[350],
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
          ); */
        }));
  }

  Widget getBottomNavigationBar() {
    return new Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        icon: const Icon(Icons.add),
        label: const Text('Add a task'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
