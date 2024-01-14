//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
//Import FILES
//  PARTS
//  PROVIDERS

//

class BardHomePage extends StatelessWidget {
  const BardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button 1: Elevated button with green theme
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.home, color: Colors.white),
              label: const Text('Home', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            // Button 2: Text button with blue theme
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.blue),
              label:
                  const Text('Settings', style: TextStyle(color: Colors.blue)),
            ),
            // Button 3: Outlined button with orange theme
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.orange),
              label:
                  const Text('Search', style: TextStyle(color: Colors.orange)),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange,
              ),
            ),
            // Button 4: Custom button with pink theme
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.favorite, color: Colors.white),
                label: const Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Button 5: Custom button with purple theme
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share, color: Colors.white),
                label: const Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // Button 6: Material button with image and yellow theme
            MaterialButton(
              onPressed: () {},
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/images/your_image.png'), // Replace with your image
                  const Text('Image Button'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
