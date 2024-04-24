import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:re_exam/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isforcake = true;
  bool isforcheese = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        centerTitle:true,
        title: const Text("Discover",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cart');
              },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12)),
              child: const Icon(Icons.shopping_cart_sharp,
                  color: Colors.white),
            ),
          ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius:2,
                          blurRadius:2,
                          color: Colors.black12
                        ),
                      ],
                      color: Colors.white,
                    ),
                    height: 50,
                    width: MediaQuery.sizeOf(context).width*60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text("Search your Favorite Item ",
                        style: TextStyle(
                          color: Colors.brown.shade300,
                          fontSize: 17
                        ),
                        ),
                        Icon(Icons.search),
                        ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                //       InkWell(onTap: (){
                // setState(() {
                // forcake = true;
                // forcheese = true;
                // });
                // },
                //       ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                //spreadRadius:1,
                                blurRadius:1,
                                color: Colors.black12
                            ),
                          ],
                          color: Colors.brown.shade100,
                        ),
                        height: 50,
                        width: 80,
                        child: const Center(
                            child: InkWell(
                              child: Text("All",
                              style: TextStyle(fontSize: 15,color: Colors.brown),
                              ),
                            ),
                        ),
                      ),
                      const SizedBox(width:15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              //spreadRadius:1,
                                blurRadius:1,
                                color: Colors.black12
                            ),
                          ],
                          color: Colors.brown.shade100,
                        ),
                        height: 50,
                        width: 80,
                        child: const Center(
                            child: Text("Cake",
                              style: TextStyle(fontSize: 15,color: Colors.brown),)
                        ),
                      ),
                      const SizedBox(width:15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              //spreadRadius:1,
                                blurRadius:1,
                                color: Colors.black12
                            ),
                          ],
                          color: Colors.brown.shade100,
                        ),
                        height: 50,
                        width: 120,
                        child: const Center(
                          child: Text("Cheese Cake",
                            style: TextStyle(fontSize: 15,color: Colors.brown),
                          ),
                        ),
                      ),
                      const SizedBox(width:15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              //spreadRadius:1,
                                blurRadius:1,
                                color: Colors.black12
                            ),
                          ],
                          color: Colors.brown.shade100,
                        ),
                        height: 50,
                        width: 80,
                        child: const Center(
                            child: Text("Pastry",
                              style: TextStyle(fontSize: 15,color: Colors.brown),)
                        ),
                      ),
                      const SizedBox(width:15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              //spreadRadius:1,
                                blurRadius:1,
                                color: Colors.black12
                            ),
                          ],
                          color: Colors.brown.shade100,
                        ),
                        height: 50,
                        width: 80,
                        child: const Center(
                            child: Text("Donut",
                              style: TextStyle(fontSize: 15,color: Colors.brown),)
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(
                          cakeList.length,
                              (index) => Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Map m1 = cakeList[index];
                                  Navigator.pushNamed(context, 'details',
                                      arguments: m1);
                                },
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "${cakeList[index]['image']}"),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("${cakeList[index]['name']}",
                                        style:const TextStyle(fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text("${cakeList[index]['price']}",
                                    style:const TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(
                          cakeList.length,
                              (index) => Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Map m1 = cakeList[index];
                                  Navigator.pushNamed(context, 'details',
                                      arguments: m1);
                                },
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "${cheeseList[index]['image']}"),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("${cheeseList[index]['name']}",
                                        style:const TextStyle(fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text("${cheeseList[index]['price']}",
                                    style:const TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(
                          cakeList.length,
                              (index) => Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Map m1 = cakeList[index];
                                  Navigator.pushNamed(context, 'details',
                                      arguments: m1);
                                },
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "${pastryList[index]['image']}"),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("${pastryList[index]['name']}",
                                        style:const TextStyle(fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text("${pastryList[index]['price']}",
                                    style:const TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
