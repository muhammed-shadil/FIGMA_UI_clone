import 'package:figma_ui_clone/profile./listtile.dart';
import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.800000011920929),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Row(
              textDirection: TextDirection.rtl,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.wallet,
                  color: Colors.yellow,
                )
              ],
            ),
            const Row(children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "images/Ellipse 34.png",
                ),
                child: Stack(children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.edit),
                      ))
                ]),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text(
                    "Alex",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "@AlexForgot@gmail.com,",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ]),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.white,
              ),
              height: 500,
              child: const Profiletile(),
            )
          ],
        ),
      ),
    );
  }
}
