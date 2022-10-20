import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = AsyncNotifierProvider<MyNotifier, String>(MyNotifier.new);

class MyNotifier extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return "BUILD DONE";
  }

  doSomething() async {
    update((data) async {
      state = const AsyncLoading();
      await Future.delayed(const Duration(seconds: 1));
      return "DONE DOING SOMETHING";
    });
  }
}
