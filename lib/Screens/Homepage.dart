import 'package:e_pasal/Screens/ShoeTab.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  int currentpage = 0;
  int brand = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Our ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "Prouducts",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
          ])),
          actions: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.grey,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 3,
                    )
                  ]),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelStyle:
                    TextStyle(color: Colors.grey, fontSize: 14),
                tabs: [
                  Tab(
                    child: Text(
                      "Shoe",
                    ),
                  ),
                  Tab(
                    text: "Clothes",
                  ),
                  Tab(
                    text: "Cap",
                  ),
                  Tab(
                    text: "Watch",
                  ),
                  
                ]),
              Expanded(child: TabBarView(controller: tabController,children: [
                Shoe(),
                Text("home"),
                Text("home"),
                Text("home"),

              ]))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 7,),
                Text("New",style: TextStyle(),),
                SizedBox(width: 20,),

                Text("Comming soon",style: TextStyle(),),
                SizedBox(width: 126,),
                Container(height: 100,
                width: 100,
                decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 35, 2, 41),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(17),bottomRight: Radius.circular(17))
                ),
                child: Center(child: Text("more >",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
