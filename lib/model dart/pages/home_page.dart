import 'dart:math';

import 'package:faker/faker.dart';
import 'package:fist_app/model%20dart/models/product.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    List<product> dummyData = List.generate(100, (index) {
      return product(
          "https://picsum.photos/id/$index/200",
          faker.food.restaurant(),
          20 + Random().nextInt(100),
          faker.lorem.sentence());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "MARKETPLACE",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            header: Container(
                padding: EdgeInsets.all(5),
                color: Colors.black,
                child: Text(
                  dummyData[index].title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 1,
                )),
            footer: Center(
              child: Container(
                // alignment: Alignment.center,
                // padding: EdgeInsets.all(5),
                // color: Colors.amber,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "\$${dummyData[index].price}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.amber,
                        padding: EdgeInsets.all(3),
                        child: Text(
                          dummyData[index].description,
                          style: TextStyle(fontSize: 15),
                          maxLines: 2,
                        ),
                      ),
                    ]),
              ),
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
