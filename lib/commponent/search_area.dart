import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchArea extends HookWidget {
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  const SearchArea({super.key, this.controller, this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          controller: controller,
          onSubmitted: onSubmitted,
          decoration: const InputDecoration(
            icon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
