import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var wth = MediaQuery.of(context).size.width;
    var hht = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: hht * 0.5,
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         transform: GradientRotation(3.14 / 2),
              //         colors: [
              //           Colors.black.withOpacity(0.8),
              //           Colors.white.withOpacity(0),
              //           Colors.white.withOpacity(1)
              //         ])),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  ShaderMask(
                    blendMode: BlendMode.dstIn,
                    shaderCallback: (rect) {
                      return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(rect);
                    },
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.wbur.org/wp/2022/01/books.jpg"),
                    ),
                  ),
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: NetworkImage(
                  //           "https://media.wbur.org/wp/2022/01/books.jpg"),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                      top: 25,
                      child: Text("MNMLMANDI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
                width: wth * 0.8,
                child: Text(
                  "Your Appearance shows Your Quality",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: hht * 0.02),
            Container(
                width: wth * 0.7,
                child: Text(
                  "Change The Quality of your Appearance With MNMLMANDI Now!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: hht * 0.02),
            ElevatedButton(
              onPressed: () {},
              clipBehavior: Clip.none,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.8),
                  elevation: 25,
                  fixedSize: Size(wth * 0.7, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  textStyle: TextStyle(color: Colors.white, fontSize: 14)),
              child: Text("Sign Up With Email"),
            )
          ],
        ),
      ),
    );
  }
}
