import 'package:calculrator_tabbar_app/first_page.dart';
import 'package:calculrator_tabbar_app/fourth_page.dart';
import 'package:calculrator_tabbar_app/second_page.dart';
import 'package:calculrator_tabbar_app/third_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  // Property
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4, 
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
          FourthPage(),
        ],
      ), 
      bottomNavigationBar: Container(
        color: Colors.blue,
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          controller: controller,
          tabs: [
            Tab(
              text: '덧셈', 
            ),
            Tab(
              text: '뺄셈',
            ),
            Tab(
              text: '곱셈',
            ),
            Tab(
              text: '나눗셈',
            ),
          ],
        ),
      ),
    );
  }
}