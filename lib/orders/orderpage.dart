import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'My Order',
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
        backgroundColor: Colors.black.withOpacity(0.800000011920929),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.black.withOpacity(0.800000011920929),
                  ),
                  width: 120,
                  height: 32,
                  child: const Center(
                    child: Text(
                      "On Delivery",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 100,
                  height: 32,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: const Center(
                    child: Text(
                      "Process",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.black.withOpacity(0.800000011920929),
                  ),
                  width: 100,
                  height: 32,
                  child: const Center(
                    child: Text(
                      "Sucess",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: const Text(
              "Pending Orders",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.05000000074505806),),
            padding: const EdgeInsets.all(14),
            width: MediaQuery.of(context).size.width * .95,
            height: MediaQuery.of(context).size.height * .21,
            child: Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/image 20.png")),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mocha Frappe",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "1 items",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "1.5\$",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Process",
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: const Text(
              "Past Orders",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.05000000074505806),),
            padding: const EdgeInsets.all(14),
            width: MediaQuery.of(context).size.width * .95,
            height: MediaQuery.of(context).size.height * .21,
            child: Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/image 27.png")),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hot Expresso",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "1 items",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "2.50\$",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Complete",
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 20),
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
