import 'package:flutter/material.dart';
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white60.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Category",style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold)),
          actions: [
            Icon(Icons.notifications,color: Colors.black),
            CircleAvatar(backgroundColor: Colors.amber),
            SizedBox(width: 20)],
          bottom:
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: TextField(
              decoration: InputDecoration(
                  hintText: "Search category",
                  fillColor: Colors.white60,
                  filled:true ,
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Colors.grey ,width: 4
                  ),),
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none
                  ) ,
                  prefixIcon: Icon(Icons.search,color: Colors.grey),
              ),
            ),
          ),
        ),
        body: GridView.builder(
            itemCount: 2,
            itemBuilder:(context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  // image: Image.asset("")
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent,Colors.transparent,Colors.black.withOpacity(0.3)]
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("A",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
                      Text("AAAA",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal))
                    ],
                  ),
                ),
              );
            }  ,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio:2,
              mainAxisSpacing: 10,
            ),
            ),
        );
    }
}