import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // First expanded section for scrollable containers
            Expanded(
              flex: 3, // Adjust this to allocate screen space
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Allow horizontal scrolling
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align containers at the top
                  children: [
                    // Yellow Container on the left with image
                    Container(
                      height: 350, // Adjust the height relative to screen size
                      width: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/1.jpeg', // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Column of Black Containers with images
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 165,
                          width: 130,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/3.jpeg', // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage(
                              'assets/images/2.jpeg'), // Replace with your image path
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Second expanded section for text, button, and sign in link
            Expanded(
              flex: 2, // Adjust this to allocate screen space
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Fashion App That Makes You Look Your Best',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The Fashion App That Makes You Look Your Best The Fashion App That Makes You Look Your Best',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10), // Spacing between text and button
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.brown),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      ),
                      onPressed: () {
                        // Action for button press
                      },
                      child: Text('Click Me'),
                    ),
                    SizedBox(height: 20), // Extra space below the button
                    // Non-clickable "Already have an account?" and clickable "Sign In"
                    RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.black, // Non-clickable text style
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Colors.brown, // Clickable text style
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Handle "Sign In" tap
                                print('Sign In tapped');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
