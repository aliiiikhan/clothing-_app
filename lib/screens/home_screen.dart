import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Allow horizontal scrolling
        child: SafeArea(
          child: Column(
            children: [
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align containers at the top
                children: [
                  // Yellow Container on the left with rounded edges and margins
                  Container(
                    height: 350,
                    width: 180,
                    margin: EdgeInsets.all(
                        10), // Margin around the yellow container
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(
                          100), // Rounded edges for yellow container
                    ),
                  ),

                  // Column of Black Containers on the right
                  Column(
                    children: [
                      Container(
                        height: 165, // Half the height of the yellow container
                        width: 130, // Same width as yellow container
                        margin: EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom:
                                20), // Left and right margins + space between black containers
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(100), // Rounded edges
                        ),
                      ),
                      CircleAvatar(
                        radius: 75,
                      ),
                    ],
                  ),
                  Text('data'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
