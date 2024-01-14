//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Import FILES
// import 'pages/bard_home_page.dart';
//  PARTS
//  PROVIDERS
final counterProvider = StateProvider<int>((ref) {
  debugPrint('[counterProvider] created');
  ref.onDispose(() {
    debugPrint('[counterProvider] disposed');
  });
  return 0;
});
//