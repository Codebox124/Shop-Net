import 'package:flutter/material.dart';

class RecomendedProduct extends StatefulWidget {
  const RecomendedProduct({super.key});

  @override
  State<RecomendedProduct> createState() => _RecomendedProductState();
}

class _RecomendedProductState extends State<RecomendedProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 700,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content evenly
                children: [
                  Container(
                    height: 120, // Adjust image container height
                    child: Image.asset(
                      "assets/imgs/Rectangle 31.png",
                       // Ensure the image fits properly
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cotton shirt Regular Fit",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Text(
                    "RM 100.00",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        print("like");
                      });
                    },
                    icon: Icon(Icons.favorite_border),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
