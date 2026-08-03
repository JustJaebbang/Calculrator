import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  //Proerty
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("나눗셈"),
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                    labelText: "숫자를 입력하세요"
                  ),
                ),
                TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                    labelText: "숫자를 입력하세요"
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //
                  }, 
                  child: Text("OK"),
                  ),
                  
              TextField(
                controller: controller3,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
              ],
            ),
          ],
        ),
      ),
    );
  }
  void add() {
    if(controller1.text.trim().isNotEmpty && controller2.text.trim().isNotEmpty);
    int num1 = int.parse(controller1.text.trim());
    int num2 = int.parse(controller2.text.trim());
    int sum = num1%num2;
    
    setState(() {});
  }
}