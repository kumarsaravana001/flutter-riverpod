import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_application/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void onSubmit(String value, WidgetRef ref) {
    ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider) ?? ''; //used for continuous event
    //final nameRead = ref.read(nameProvider); //One time thing only Used Just once,Used in Lifecycle method
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          TextField(onSubmitted: (value) => onSubmit(value, ref)),
          Center(
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
