import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60.withOpacity(0.9),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: BottomNavigationBar(
              backgroundColor: Colors.grey,
              selectedItemColor: Colors.black,
              items: [BottomNavigationBarItem(
                label: "A",
                icon:Icon(Icons.abc) ,
              ),
                BottomNavigationBarItem(
                  label: "A",
                  icon:Icon(Icons.shop) ,
                ),],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Category",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          actions: [
            Icon(Icons.notifications, color: Colors.black),
            CircleAvatar(backgroundColor: Colors.amber),
            SizedBox(width: 20)
          ],
          bottom: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search category",
                    fillColor: Colors.white60,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Colors.grey, width: 4),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        child: Text("A"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.black45),
                      ),
                      ElevatedButton(
                        child: Text("A"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.black45),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        extendBodyBehindAppBar: false,
        body: MasonryGridView.count(
          padding: EdgeInsets.symmetric(vertical: 10),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: ((index + 1) % 2 == 0 ? 200 : 300),
                    decoration: BoxDecoration(
                      // image: Image.asset("")
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.3)
                          ]),
                    ),
                    child: Text("${index + 1}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "A",
                        ),
                        Text("AA"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
