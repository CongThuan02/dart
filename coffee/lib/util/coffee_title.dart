import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
   final String coffeeImagePath;
   final String coffeeName;
   final String coffeePrice;
   final String titile;
   const CoffeeTitle(
      {Key? key, required this.coffeeImagePath,
      required this.coffeeName,
      required this.titile,
      required this.coffeePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        bottom: 25.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagePath),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    titile,
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$$coffeePrice'),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        // Do something.
                      },
                      splashColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
