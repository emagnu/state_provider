//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

//Import FILES
// import 'pages/bard_home_page.dart';
//  PARTS
part 'basic_provider.g.dart';

//  PROVIDERS
final counterProvider = StateProvider<int>((ref) {
  debugPrint('[counterProvider] created');
  ref.onDispose(() {
    debugPrint('[counterProvider] disposed');
  });
  return 0;
});

// @Riverpod(keepAlive: true)
// String age(AgeRef ref) {
//   return '';
@Riverpod(keepAlive: true)
String age(AgeRef ref) {
  final age = ref.watch(counterProvider);
  ref.onDispose(() {
    debugPrint('[ageProvider] disposed');
  });
  return 'Hi! I am $age years old.';
}
//