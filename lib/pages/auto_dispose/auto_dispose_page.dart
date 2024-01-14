//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//Import FILES
import '../auto_dispose_family /auto_dispose_family_provider.dart';
//  PARTS
//  PROVIDERS

//

class AutoDisposePage extends ConsumerWidget {
  const AutoDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(autoDisposeAgeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeStateProvider'),
      ),
      body: Center(
        child: Text(
          'Value: $value',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ref.read(autoDisposeCounterProvider.notifier).state++;
            // ref.read(autoDisposeCounterProvider.notifier).state =ref.read(autoDisposeCounterProvider.notifier).state + 10;
            ref
                .read(autoDisposeCounterProvider.notifier)
                .update((state) => state + 10);
          },
          child: const Icon(Icons.add)),
    );
  }
}
