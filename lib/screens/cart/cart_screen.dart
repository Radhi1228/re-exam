import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_exam/utils/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Food Cart"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown.shade500,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            cartList.length, (index) => Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 23),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Image(
                    image:AssetImage("${cartList[0]['image']}")
                ),
              ),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("${cartList[0]['name']}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  const SizedBox(height:5),
                  Text("${cartList[0]['price']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height:10),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  setState(() {
                    cartList.removeAt(index);
                  });
                },
                child:const Icon(Icons.delete),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
