//  //
//Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//Import FILES
//  PARTS

//  PROVIDERS

final familyCounterProvider =
    StateProvider.family<int, int>((ref, initialValue) {
  debugPrint('[familyCounterProvider($initialValue)] created');

  ref.onDispose(() {
    debugPrint('[familyCounterProvider($initialValue)] disposed');
  });
  return initialValue;
});
