import 'package:flutter/material.dart';
/*
abstact türeyerek bir şeyler olmasını isticem 
diğer sınıflara yol göstermesini isticem bunun için abstract sınıf kullanırız */

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);

  double h(double value) => MediaQuery.of(context).size.height*value;
  double w(double value) => MediaQuery.of(context).size.width*value;
}

class hello extends StatefulWidget {
  const hello({super.key});

  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
