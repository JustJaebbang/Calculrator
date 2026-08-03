import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  // Property
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late int num1;
  late int num2;
  late int result;

  @override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    num1 = 0;
    num2 = 0;
    result = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('덧셈 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.end,
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
              ),
            ),
            TextField(
              textAlign: TextAlign.end,
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                add();
              }, 
              child: Text('덧셈'),
            ),
            Text('$num1 + $num2 = $result')
          ],
        ),
      ),
    );
  }

  // Functions
  void add(){
    num1 = int.parse(num1Controller.text.trim());
    num2 = int.parse(num2Controller.text.trim());
    result = num1+num2;
    setState(() {});
  }
}