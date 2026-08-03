import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();

  // Property
  late TextEditingController controller1;
  late TextEditingController controller2;
  late int num1;
  late int num2;
  late int resultNum;
  
  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    num1 = 0;
    num2 = 0;
    resultNum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "숫자를 입력하시오",
                  border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "숫자를 입력하시오",
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                  if(controller1.text.trim().isNotEmpty == true && controller2.text.trim().isNotEmpty == true) {
                    num1 = int.parse(controller1.text.trim());
                    num2 = int.parse(controller2.text.trim());
                    resultNum = num1 * num2;
                    setState(() {});
                  }
                },
                child: Text("OK")
              ),
              Text(
                "$num1 * $num2 = $resultNum",
                style: TextStyle(
                  fontSize: 20
                ),
              )
            ],
          ),
        ),
      ),
    );
    main
  }
}