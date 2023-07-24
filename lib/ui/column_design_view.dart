import 'package:flutter/material.dart';
import 'package:responcive_learn/ui/context_extencion.dart';
import 'package:responcive_learn/ui/false_respons_use.dart';

class ColumnDesgnView extends StatefulWidget {
  const ColumnDesgnView({super.key});

  @override
  State<ColumnDesgnView> createState() => _ColumnDesgnViewState();
}

class _ColumnDesgnViewState extends State<ColumnDesgnView> {
  final sempleBookUrl =
      "https://www.pngfind.com/pngs/m/102-1021249_open-book-png-open-book-in-png-transparent.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RESPONSİVE')),
      bottomNavigationBar: builBottomNavigationBar,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.h(0.1)),
        child: Column(children: [

            Expanded(flex: 25, child: Center(child: Image.network(sempleBookUrl))),
            Expanded(child: BuildRowItem()),
            Expanded(flex: 3, child: FittedBox(child: Text("Accent", style: Theme.of(context).textTheme.headline3))),
          SizedBox(
              height: 250, child: Center(child: Image.network(sempleBookUrl))),
           Expanded(// expanded row ve column'a özel kullanılan bir widgettir
            child: BuildRowItem(),
          ),
          const Text('ACCENT',style: TextStyle(),)
        ]),
      ),
    );
  }

  Row BuildRowItem() {
    return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar( radius: 5,),
              CircleAvatar( radius: 5,),
              CircleAvatar( radius: 5, backgroundColor: Colors.black26, ),
              CircleAvatar(radius: 5,),
              CircleAvatar(radius: 5,),
            ],
          );
  }

  BottomNavigationBar get builBottomNavigationBar {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.hail), label: 'page1'),
      BottomNavigationBarItem(icon: Icon(Icons.hail), label: 'page2'),
    ]);
  }
}
