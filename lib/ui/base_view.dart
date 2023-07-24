import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  const BaseView({super.key, required this.onPageBuilder, required this.viewModel, required this.onModelReady, required this.onDispose});

  final Widget Function(BuildContext context, T value ) onPageBuilder;
  final T viewModel;
  // callback vermenin 2 yöntemi var bir void birde function
  // parametre döndüreceksen function kullanmak daha iyi 

  final Function(T model ) onModelReady;
  final VoidCallback onDispose;


  @override
  State<BaseView<T>> createState() => _BaseView<T>State();
}

class _BaseView<T>State extends State<BaseView<T>> {
  @override
  void initState() { // initstate sayfa ayağa kalktığında direk tetikler
    super.initState();
    if(widget.onModelReady!=null).widget.onModel
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return const Placeholder();
  }
}