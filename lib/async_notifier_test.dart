import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = AsyncNotifierProvider<MyNotifier, int>(MyNotifier.new);

class MyNotifier extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return 1;
  }
}

final provider2 = AsyncNotifierProvider<MyNotifier2, int>(MyNotifier2.new);

class MyNotifier2 extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    AsyncValue<int> x = ref.watch(provider);
    return 1;
  }
}
