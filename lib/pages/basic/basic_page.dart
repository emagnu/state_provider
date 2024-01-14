//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//Import FILES
import 'package:state_provider/pages/basic/basic_provider.dart';
// import 'pages/bard_home_page.dart';
//  PARTS
//  PROVIDERS

//

class BasicPage extends ConsumerWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(counterProvider);
    ref.listen(
      counterProvider,
      (previous, next) {
        if (next == 3) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('The counter value has reached $next'),
              );
            },
          );
        }
      },
    );

    // if (value == 3) {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text('The counter value has reached $value'),
    //       );
    //     },
    //   );
    // }
    //title: const Text("You win!"), content: const Text("You won the game!"), actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("OK"))]));}}

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateProvider'),
      ),
      // body: const Text('StateProvider'),
      body: Center(
        child: Text(
          'Value: $value',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(Icons.add)),
    );
  }
}
