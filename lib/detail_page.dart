import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFFFFFFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'name',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'CreoTeam',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                GFAvatar(
                  radius: 23,
                  backgroundImage: AssetImage('assets/images/img1.png'),
                  shape: GFAvatarShape.standard,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  "My Project's",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.pink,
                ),
                SizedBox(
                  width: 170,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.grey)),
                  child: Icon(
                    Icons.settings_input_composite_sharp,
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  ' All ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Open',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Close',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Expried',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "You have 11 Project's",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 210,
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: GFAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('assets/images/img2.png'),
                                shape: GFAvatarShape.standard,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Branding Studio',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '21 tasks',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        CupertinoIcons.exclamationmark,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        '12 sep 19',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'member',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      GFAvatar(
                                        radius: 17,
                                        backgroundImage: AssetImage(
                                            'assets/images/img1.png'),
                                        shape: GFAvatarShape.standard,
                                      ),
                                      GFAvatar(
                                        radius: 17,
                                        backgroundImage: AssetImage(
                                            'assets/images/img2.png'),
                                        shape: GFAvatarShape.standard,
                                      ),
                                      GFAvatar(
                                        radius: 17,
                                        backgroundImage: AssetImage(
                                            'assets/images/img1.png'),
                                        shape: GFAvatarShape.standard,
                                      ),
                                      GFAvatar(
                                        radius: 17,
                                        backgroundImage:
                                            AssetImage('assets/images/mr.jpg'),
                                        shape: GFAvatarShape.standard,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(children: [
                                    Text(
                                      'progress',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      '75%',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ]),
                                  SizedBox(height: 8),
                                  SizedBox(
                                      width: 230,
                                      child: LinearPercentIndicator(
                                        percent: 0.75,
                                        lineHeight: 6,
                                        backgroundColor: Colors.grey,
                                        progressColor: Colors.green,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color(0xff2e3034),
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.equal,
            color: Color.fromARGB(255, 255, 255, 255)
              ),
              title:Text(''),
              // backgroundColor: Colors.()
              backgroundColor: Color(0xff2e3034),
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home,color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.blue
              backgroundColor: Color(0xff2e3034),
            ),
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.square_list,color: Color.fromARGB(255, 255, 255, 255)),
                title: new Text(''),
                // backgroundColor: Colors.amber
              backgroundColor: Color(0xff2e3034),
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.find_in_page, color: Color.fromARGB(255, 255, 255, 255)),
              title: new Text(''),
              // backgroundColor: Colors.amber
              backgroundColor: Color(0xff2e3034),
            ),
            BottomNavigationBarItem(
              icon:Icon(CupertinoIcons.add, color: Color.fromARGB(255, 255, 255, 255)),
              title: new Text(''),
              // backgroundColor: Colors.amber
              backgroundColor: Color(0xff2e3034),
            ),
          ],
        ),
      ),
    );
  }
}
