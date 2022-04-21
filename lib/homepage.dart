import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [
    Icons.home,
    Icons.bookmark,
    Icons.notifications,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(7, 50, 7, 0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Search Resturants",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_alt),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending Restaurants",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all (45)",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 1.0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 236, 236, 236)),
                      ),
                      width: 370.0,
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/2.png"),
                                fit: BoxFit.cover,
                                opacity: .8,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 20, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Chip(
                                          label: Text("Open"),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.green),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                        Chip(
                                          label: Text("4.5"),
                                          avatar: Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 248, 192, 9),
                                          ),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(255, 199, 198, 198),
                                    width: 1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Happy Bones",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Chip(
                                        label: Text("Italian"),
                                        backgroundColor:
                                            Color.fromRGBO(255, 86, 115, 100),
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Chip(
                                        label: Text("19Km"),
                                        backgroundColor: Colors.purple,
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      RowSuper(
                                        innerDistance: -10,
                                        children: const [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person2.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person1.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person3.jpg"),
                                            radius: 15,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "394 Broome St, New York, NY 10013, USA",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 146, 146, 146),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 1.0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 236, 236, 236)),
                      ),
                      width: 370.0,
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/3.png"),
                                fit: BoxFit.cover,
                                opacity: .8,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 20, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Chip(
                                          label: Text("Open"),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.green),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                        Chip(
                                          label: Text("4.5"),
                                          avatar: Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 248, 192, 9),
                                          ),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(255, 199, 198, 198),
                                    width: 1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Happy Bones",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Chip(
                                        label: Text("Italian"),
                                        backgroundColor:
                                            Color.fromRGBO(255, 86, 115, 100),
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Chip(
                                        label: Text("19Km"),
                                        backgroundColor: Colors.purple,
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      RowSuper(
                                        innerDistance: -10,
                                        children: const [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person2.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person1.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person3.jpg"),
                                            radius: 15,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "394 Broome St, New York, NY 10013, USA",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 146, 146, 146),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                1.0, 1.0), // shadow direction: bottom right
                          )
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 236, 236, 236)),
                      ),
                      width: 370.0,
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/1.png"),
                                fit: BoxFit.cover,
                                opacity: .8,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 20, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Chip(
                                          label: Text("Open"),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.green),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                        Chip(
                                          label: Text("4.5"),
                                          avatar: Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 248, 192, 9),
                                          ),
                                          backgroundColor: Colors.white,
                                          labelStyle:
                                              TextStyle(color: Colors.black),
                                          elevation: 3,
                                          padding:
                                              EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(255, 199, 198, 198),
                                    width: 1),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Happy Bones",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Chip(
                                        label: Text("Italian"),
                                        backgroundColor:
                                            Color.fromRGBO(255, 86, 115, 100),
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Chip(
                                        label: Text("19Km"),
                                        backgroundColor: Colors.purple,
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                        elevation: 1,
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      RowSuper(
                                        innerDistance: -10,
                                        children: const [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person2.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person1.jpg"),
                                            radius: 15,
                                          ),
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/person3.jpg"),
                                            radius: 15,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "394 Broome St, New York, NY 10013, USA",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 146, 146, 146),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all (9)",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 115,
                      child: const Center(
                        child: Text(
                          "Italian",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 255, 236, 236)),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 125, 117),
                        image: const DecorationImage(
                          image: AssetImage("assets/1.png"),
                          fit: BoxFit.cover,
                          opacity: .4,
                        ),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 248, 248, 248),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 115,
                      child: const Center(
                        child: Text(
                          "Maxican",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 255, 236, 236)),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 117, 233),
                        image: const DecorationImage(
                          image: AssetImage("assets/2.png"),
                          fit: BoxFit.cover,
                          opacity: .4,
                        ),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 248, 248, 248),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 115,
                      child: const Center(
                        child: Text(
                          "Chinese",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 255, 236, 236)),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 107, 219),
                        image: const DecorationImage(
                          image: AssetImage("assets/3.png"),
                          fit: BoxFit.cover,
                          opacity: .4,
                        ),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 248, 248, 248),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Friends",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all (56)",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person2.jpg"),
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person1.jpg"),
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person3.jpg"),
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person1.jpg"),
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person2.jpg"),
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/person3.jpg"),
                  radius: 25,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.blue,
        iconSize: 35,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
