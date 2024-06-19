import 'package:flutter/material.dart';
import 'package:tugas_ui_flutter/pages/home.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/enter.png'),
              ),
            ),
            const SizedBox(height: 100), // Add some space between the image and the button
            SizedBox(
              width: 300, // Set the width of the button
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next page or functionality
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 121, 107, 1),
                  foregroundColor: Colors.white, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                ),
                child: const Text('Get Started',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

