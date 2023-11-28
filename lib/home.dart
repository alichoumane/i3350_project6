import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex:0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Multi tabs demos", style: TextStyle(fontSize: 22.0),),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(icon:Icon(Icons.camera_alt, size: 30,)),
              Tab(icon: Icon(Icons.chat, size: 30,)),
              Tab(icon:Icon(Icons.group, size: 30,)),
            ]),
          ),
          body: const TabBarView(
              children: [
                Page1(),
                Page2(),
                Page3(),
              ]),
        ));
  }
}
