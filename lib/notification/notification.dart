import 'package:figma_ui_clone/notification/notificationtile.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            //replace with our own icon data.
          ),
          backgroundColor: Colors.black.withOpacity(0.800000011920929),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Notification",
              style: TextStyle(color: Colors.white),
            )),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "NOW",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                NotificationTile(
                    text: "Lorem Ipsum is simply dummy text of",
                    image: "images/image 20.png",
                    time: "12:28pm"),
                NotificationTile(
                    text: "Lorem  simply dummy text Ipsum is  of",
                    image: "images/image 20.png",
                    time: "1:18pm"),
                NotificationTile(
                    text: "Lorem Ipsum is simply dummy text of",
                    image: "images/image 26.png",
                    time: "1:45pm"),
                NotificationTile(
                    text: "Lorem dummy Ipsum is text simply of",
                    image: "images/image 20.png",
                    time: "2:08pm"),
                Text(
                  "Yesrter Day",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                NotificationTile(
                    text: "shadil is orderd urgent simply dummy text of",
                    image: "images/image 26.png",
                    time: "11:55pm"),
                NotificationTile(
                    text: "Lorem dummy Ipsum is text simply of",
                    image: "images/image 20.png",
                    time: "4:08pm"),
                Text(
                  "Last 10 days",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                NotificationTile(
                    text: "Lorem Ipsum is simply dummy text of",
                    image: "images/image 20.png",
                    time: "12:28pm"),
                NotificationTile(
                    text: "Lorem  simply dummy text Ipsum is  of",
                    image: "images/image 20.png",
                    time: "1:18pm"),
              ],
            ),
          ),
        ));
  }
}
