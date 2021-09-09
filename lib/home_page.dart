import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int _currentIndex = 0;
    final Color black = Color(0xFF000000);

    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Color(0xFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //name
              Container(
                width: width,
                height: 100,
                margin: EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      // CircleAvatar(
                      //   radius:40,
                      //   backgroundImage: AssetImage(
                      //       "img/background.jpg"),
                      // ),
                      // SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                color: black,
                                fontSize: 20,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "CreoTeam",
                            style: TextStyle(
                                color: Color(0xffbfb8b5),
                                fontSize: 15,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      GFAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('assets/images/mr.jpg'),
                        shape: GFAvatarShape.standard,
                      ),
                      // CircleAvatar(
                      //   radius:25,
                      //   backgroundImage: AssetImage('assets/images/mr.jpg'),
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      // Container(
                      //   width: 70,
                      //   height: 70,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(20),
                      //       color:Color(0xFFf3fafc)
                      //   ),
                      //   child: Center(
                      //     child: Icon(
                      //       Icons.notifications,
                      //       color:Color(0xFF69c5df),
                      //       size: 30,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //popular contest
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Text(
                      "Taday's tasks",
                      style: TextStyle(
                          color: Color(0xff3f474c),
                          fontSize: 22,
                          decoration: TextDecoration.none),
                    ),
                    Expanded(child: Container()),
                    // Text(
                    //   "Show all",
                    //   style: TextStyle(
                    //       color:Color(0xFFcfd5b3),
                    //       fontSize: 15,
                    //       decoration: TextDecoration.none
                    //   ),
                    // ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white24,
                      ),
                      child: Icon(
                        CupertinoIcons.greaterthan,
                        color: Colors.red,
                      ),
                      // GestureDetector(
                      //
                      // ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //list

              Container(
                height: 260,
                // width:
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.80),
                    itemCount: 4,
                    itemBuilder: (_, i) {
                      return GestureDetector(
                        child: Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          height: 220,
                          width: MediaQuery.of(context).size.width - 20,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: i.isEven
                                  ? Color(0xFFFF5455)
                                  : Color(0xFF2D55DC)),
                          child: Column(
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Expanded(child: Container())
                                ],
                              )),
                              SizedBox(height: 10),
                              Container(
                                width: width,
                                child: Text(
                                  "Text",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xFFb8eefc)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                              Row(children: [
                                for (int i = 0; i < 4; i++)
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        // image: DecorationImage(
                                        // image: AssetImage(
                                        //
                                        // ),
                                        // fit: BoxFit.cover
                                        // )
                                      ),
                                    ),
                                  )
                              ]),
                              SizedBox(
                                height: 25,
                              ),
                              // Container(
                              //     child: Text('50%',style: TextStyle(
                              //       color: Colors.white,
                              //     ),),
                              // ), Text('59')
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    LinearPercentIndicator(
                                      width: 180,
                                      lineHeight: 6.0,
                                      percent: 0.6,
                                      backgroundColor: Colors.white,
                                      progressColor: Color(0xff6d3538),
                                    ),
                                    Text(
                                      '59%',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GFAvatar(
                                      radius: 22,
                                      backgroundImage:
                                          AssetImage('assets/images/mr.jpg'),
                                      shape: GFAvatarShape.standard,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              //recent contests
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Text(
                      "Open Project",
                      style: TextStyle(
                          color: Color(0xFF1f2326),
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                    Expanded(child: Container()),
                    //   "Show all",
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Color(0xFFcfd5b3)
                      ),
                      child: Icon(
                        CupertinoIcons.greaterthan,
                        color: Colors.red,
                      ),
                      // child: GestureDetector(
                      //
                      // ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 1,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (_, i) {
                            return Container(
                              width: width,
                              height: 75,
                              margin: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    GFAvatar(
                                      radius: 22,
                                      child: Text("B"),
                                      backgroundColor: Colors.brown,
                                      shape: GFAvatarShape.standard,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Brading Studio",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '21 task',
                                              style: TextStyle(
                                                color: Color(0xFF184ADE),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(width: 120),
                                            Text(
                                              "5 member",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: Color(0xff92999e)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                            width: 170,
                                            child: LinearPercentIndicator(
                                              percent: 0.7,
                                              backgroundColor: Colors.grey,
                                              progressColor: Colors.green,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }))),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   item
        // ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: BottomNavigationBar(
            currentIndex: 0,
            // backgroundColor: Color(0xff2e3034),
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.equal, color: Color.fromARGB(255, 255, 255, 255)),
                title: Text(''),
                // backgroundColor: Colors.()
                backgroundColor: Color(0xff2e3034),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home,
                    color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.blue
                backgroundColor: Color(0xff2e3034),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_list,
                    color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.amber
                backgroundColor: Color(0xff2e3034),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.find_in_page,
                    color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.amber
                backgroundColor: Color(0xff2e3034),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add,
                    color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.amber
                backgroundColor: Color(0xff2e3034),
              ),
            ],
          ),
        ));
  }
}
