// ignore_for_file: file_names

import 'package:coffee/util/coffee_title.dart';
import 'package:coffee/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeTypes = [
    ['Capuchino', true],
    ['latte', false],
    ['tea', false],
    ['milk', false],
    ['aaa', false],
    ['bbb', false],
    ['ccc', false],
    ['111', false],
  ];
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("is clone"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Do something.
            },
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => {
                // ignore: avoid_print
                print("Click on settings button"),
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          // mainAxisSize: MainAxisSize.values,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // ignore: avoid_print
                print("Click on home home");
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                // ignore: avoid_print
                print("Click on notifications");
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 46),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "find your coffee...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 40,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTypes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CoffeeType(
                    coffeeType: coffeeTypes[index][0],
                    isSelected: coffeeTypes[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  ),
                );
              },
            ),

            // color: Colors.red,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: ListView(
                // scrollDirection: Axis.horizontal, // horizontal xep theo cot
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/latte.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "1",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/caffee.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "7",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/milk.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "2",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/milk.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "3",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/milk.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "4",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/milk.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "5",
                  ),
                  const CoffeeTitle(
                    coffeeImagePath: "lib/images/milk.png",
                    coffeeName: "hehe",
                    coffeePrice: '4.00',
                    titile: "6",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
