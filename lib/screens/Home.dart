import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Services/GetPlatform.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: isMobile(context) ? MobileNavBar() : WebNavBar(size),
      body: isMobile(context) ? MobileScreen() : WebScreen(size),
    );
  }

  Widget MobileScreen() {
    return Container(color: Colors.white);
  }

  Widget WebScreen(Size size) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: size.width * 0.13),
      child: Container(),
    );
  }

  AppBar MobileNavBar() {
    return AppBar();
  }

  AppBar WebNavBar(Size size) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(left: size.width * 0.13, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "PortFolio",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.13),
              child: Row(
                spacing: 20,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "About",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Case Study",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Let's Get in Touch",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
