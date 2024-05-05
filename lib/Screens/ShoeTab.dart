import 'package:flutter/material.dart';

class Shoe extends StatefulWidget {
  const Shoe({super.key});

  @override
  State<Shoe> createState() => _ShoeState();
}

class _ShoeState extends State<Shoe> {
  List<String> shoe = [
    'img/shoe1.png',
    'img/shoe2.png',
    'img/shoe3.png',
    'img/shoe4.png',
     'img/shoe5.png',
     'img/shoe6.png',
  ];
   List<String> shoes = [
    'img/shoe1.png',
    'img/shoe2.png',
    'img/shoe3.png',
    'img/shoe4.png',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179,71,32,255),
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 800,
          height: 330,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 330,
              width: 1048,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 3/2,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 330,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 330,
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(17),
                                border: Border.all(color: Colors.black),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(3, 3),
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                  )
                                ]),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 180,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 35, 2, 41)),
                              child: Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 0,
                            right: 10,
                            bottom: 120,
                            child: Container(
                            height: 200,
                            width: 200,
                            // child: Image(image: AssetImage(shoe[index])),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(shoes[index]))),
                          )),
                          Positioned(
                              bottom: 70,
                              left: 10,
                              child: Text(
                                "\$250",
                                style: TextStyle(fontSize: 26),
                              )),
                          Positioned(
                              bottom: 100,
                              left: 10,
                              child: Text(
                                "Jordan Air 5",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              )),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
        // SizedBox(
        //   height: ,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 12,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Best ",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "Offers",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
            ])),
          ],
        ),
        Container(
          height: 320,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 12,
                mainAxisExtent: 80),
            padding: const EdgeInsets.all(19),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(17)),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset(shoe[index]),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          "item name",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "item name",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "\$500",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
