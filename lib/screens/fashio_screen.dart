// import 'package:flutter/material.dart';

// class FashionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Top section: Location and Notification
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.location_on, color: Colors.brown),
//                         SizedBox(width: 5),
//                         Text(
//                           "New York, USA",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Icon(Icons.arrow_drop_down),
//                       ],
//                     ),
//                     Icon(Icons.notifications, color: Colors.brown),
//                   ],
//                 ),

//                 SizedBox(height: 20),

//                 // Search bar with filter icon
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.search, color: Colors.brown),
//                             SizedBox(width: 10),
//                             Expanded(
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                   hintText: "Search",
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: Colors.brown,
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Icon(Icons.filter_list, color: Colors.white),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 20),

//                 // New Collection banner
//                 Container(
//                   height: 150,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "New Collection",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.brown),
//                         ),
//                         SizedBox(height: 10),
//                         Text("Discount 50% for the first transaction"),
//                         SizedBox(height: 10),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.brown,
//                             shape: StadiumBorder(),
//                           ),
//                           child: Text("Shop Now"),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 // Category Section
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Category",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "See All",
//                       style: TextStyle(color: Colors.brown),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 10),

//                 // Categories Row
//                 Container(
//                   height: 60,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       CategoryItem(icon: Icons.show_chart, label: "T-Shirt"),
//                       CategoryItem(icon: Icons.pages, label: "Pant"),
//                       CategoryItem(icon: Icons.desk, label: "Dress"),
//                       CategoryItem(icon: Icons.rocket, label: "Jacket"),
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 // Flash Sale Section
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Flash Sale",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     Row(
//                       children: [
//                         Icon(Icons.timer, color: Colors.brown),
//                         SizedBox(width: 5),
//                         Text(
//                           "02:12:56",
//                           style: TextStyle(color: Colors.brown),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 10),

//                 // Flash Sale Items (using GridView inside SingleChildScrollView)
//                 GridView.count(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 0.7, // Adjust this to change item size
//                   shrinkWrap: true, // Important to wrap grid in scroll
//                   physics:
//                       NeverScrollableScrollPhysics(), // Disable grid scroll
//                   children: [
//                     FlashSaleItem(),
//                     FlashSaleItem(),
//                     FlashSaleItem(),
//                     FlashSaleItem(),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       // Bottom navigation bar placeholder
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.brown,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: "Shop"),
//           BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }

// // Widget for Category Items
// class CategoryItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const CategoryItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 15),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, color: Colors.brown, size: 30),
//           SizedBox(height: 5),
//           Text(label, style: TextStyle(fontSize: 12)),
//         ],
//       ),
//     );
//   }
// }

// // Widget for Flash Sale Items
// class FlashSaleItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Placeholder for the product image
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.grey[400],
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Brown Jacket",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 5),
//           Text("\$83.97"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.star, color: Colors.yellow[700], size: 16),
//                   Text("4.9"),
//                 ],
//               ),
//               Icon(Icons.favorite_border, color: Colors.brown),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
