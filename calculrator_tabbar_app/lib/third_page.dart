import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

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
    return Scaffold(appBar: AppBar(
        title: Text('곱셈 계산기'),
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
                mul();
              }, 
              child: Text('곱셈'),
            ),
            Text('$num1 * $num2 = $result')
          ],
        ),
      ),
    );
  }

  void mul(){
    num1 = int.parse(num1Controller.text.trim());
    num2 = int.parse(num2Controller.text.trim());
    result = num1*num2;
    setState(() {});
  }
}