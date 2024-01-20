import 'package:figma_ui_clone/home/item_card.dart';
import 'package:figma_ui_clone/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List homeItem = [
    ItemCard(
        image: "images/image 20.png", name: "Mocha Frappe", price: "3.50\$"),
    ItemCard(
        image: "images/image 26.png", name: "Ice Green Tea", price: "1.50\$"),
    ItemCard(
        image: "images/image 27.png", name: "Hot Expresso", price: "2.20\$"),
    ItemCard(
        image: "images/image 28.png", name: "Amakado Hot", price: "2.50\$"),
    ItemCard(
        image: "images/Rectangle 133.png",
        name: "Hot Expresso",
        price: "2.20\$"),
    ItemCard(
        image: "images/Rectangle 136.png",
        name: "Amakado Hot",
        price: "2.50\$"),
  ];

  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()));
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const TextField(
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 4.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              ),
              prefixIcon: Icon(
                Icons.search,
              ),
              hintText: 'search',
              hintStyle: TextStyle(fontSize: 17)),
        ),
        backgroundColor: Colors.black.withOpacity(0.800000011920929),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: [
                  Container(
                    // margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      "images/Rectangle 37.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      "images/rec2.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 290,
                    // margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      "images/rec3.jpeg",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .062,
                      child: const Text(
                        "Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 12.png"),
                              const Text("Ice")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 13.png"),
                              const Text("hot")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 14.png"),
                              const Text("Tea")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 15.png"),
                              const Text("Frappe")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 12.png"),
                              const Text("ice")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 15.png"),
                              const Text("Frappe")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 12.png"),
                              const Text("ice")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 12.png"),
                              const Text("Ice")
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: Column(children: [
                              Image.asset("images/image 13.png"),
                              const Text("hot")
                            ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                        "Coffee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 750,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,

                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 300,
                        ),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color:
                                  Colors.black.withOpacity(0.05000000074505806),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: MediaQuery.of(context).size.width * .45,
                            height: MediaQuery.of(context).size.height * .32,
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(
                                      homeItem[index].image,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  child: Text(
                                    homeItem[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  child: SingleChildScrollView(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Price"),
                                        Text(homeItem[index].price)
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  child: SingleChildScrollView(
                                      child: Row(
                                    children: [
                                      Icon(Icons.star_border_outlined,
                                          size: 20),
                                      Icon(Icons.star_border_outlined,
                                          size: 20),
                                      Icon(Icons.star_border_outlined,
                                          size: 20),
                                      Icon(Icons.star_border_outlined,
                                          size: 20),
                                      Icon(
                                        Icons.star_border_outlined,
                                        size: 20,
                                      )
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
