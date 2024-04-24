import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_exam/utils/global.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back)),
                      ],
                    ),
                  ),
                  Image(image: AssetImage("${m1['image']}"), height: 350),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${m1['name']}",
                            style: const TextStyle(fontSize: 35)),
                      ],
                    ),
                  ),

                   const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                        "Get upto 20% off on happy birthday cake. "
                            "Celebrate your loved one's birthday by sending fresh B'day cake.",
                        style: TextStyle(
                            letterSpacing: 1.2, fontWeight: FontWeight.w500)),
                  ), //caption
                  const SizedBox(height: 15),
                  Text(
                    "${m1['price']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(thickness: 5,
                    color: Colors.brown,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      cartList.add(m1);
                      Navigator.pop(context);
                    },
                    label: const Text("Buy Now",
                      style: (TextStyle(color: Colors.white)),),
                    backgroundColor: Colors.brown,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
