//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//Import FILES
// import 'pages/bard_home_page.dart';
//  PARTS
part 'auto_dispose_family_provider.g.dart';

//  PROVIDERS
final autoDisposeCounterProvider = StateProvider<int>((ref) {
  debugPrint('[autoDisposeCounterProvider] created');
  ref.onDispose(() {
    debugPrint('[autoDisposeCounterProvider] disposed');
  });
  return 0;
});

// @Riverpod(keepAlive: true)
// String age(AgeRef ref) {
//   return '';
@Riverpod(keepAlive: true)
String autoDisposeAge(AutoDisposeAgeRef ref) {
  final age = ref.watch(autoDisposeCounterProvider);
  ref.onDispose(() {
    debugPrint('[autoDisposeAgeProvider] disposed');
  });
  return 'Hi! I am $age years old.';
}
//