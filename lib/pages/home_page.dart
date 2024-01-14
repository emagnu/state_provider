//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
//Import FILES
import '../widgets/custom_button.dart';
import 'auto_dispose/auto_dispose_page.dart';
import 'auto_dispose_family /auto_dispose_family_page.dart';
import 'basic/basic_page.dart';
import 'family/family_page.dart';
//  PARTS
//  PROVIDERS

//

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'StateProvider',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [
            Text(
              'Please press the buttons:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.0),
            CustomButton(
              title: 'StateProvider',
              child: BasicPage(),
            ),
            CustomButton(
              title: 'AutoDisposeStateProvider',
              child: AutoDisposePage(),
            ),
            CustomButton(
              title: 'FamilyStateProvider',
              child: FamilyPage(),
            ),
            CustomButton(
              title: 'AutoDisposeFamilyStateProvider',
              child: AutoDisposeFamilyPage(),
            ),
          ],
        ),
      ),
    );
  }
}
