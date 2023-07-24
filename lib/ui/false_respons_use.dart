import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responcive_learn/ui/context_extencion.dart';

class FalseUsingRespons extends StatelessWidget {
  const FalseUsingRespons({
    super.key,
    required this.builBottomNavigationBar,
    required this.sempleBookUrl,
  });

  final BottomNavigationBar builBottomNavigationBar;
  final String sempleBookUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RESPONSİVE')),
      bottomNavigationBar: builBottomNavigationBar,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.h(0.1)),
        child: Column(children: [
          SizedBox(
              height: 250, child: Center(child: Image.network(sempleBookUrl))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 5,
              ),
              Container(
                width: 5,
              ),
              const CircleAvatar(
                radius: 5,
              ),
              Container(
                width: 5,
              ),
              const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.black26,
              ),
              Container(
                width: 5,
              ),
              const CircleAvatar(
                radius: 5,
              ),
              Container(
                width: 5,
              ),
              const CircleAvatar(
                radius: 5,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
