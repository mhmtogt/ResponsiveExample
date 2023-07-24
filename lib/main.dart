import 'package:flutter/material.dart';
import 'package:responcive_learn/ui/column_design_view.dart';
import 'package:responcive_learn/ui/list_view_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home:ListViewDesign(),
    );
  }
}