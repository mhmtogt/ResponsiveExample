import 'package:flutter/material.dart';
import 'package:responcive_learn/base/state/base_state.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h(0.2),
      color: themeData.primaryColor,
      child: Placeholder(),
    );
  }
}