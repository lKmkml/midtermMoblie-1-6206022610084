import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String price, name, dropdownvalue1;

  double wh = 0, total = 0;
  WelcomePage({
    Key? key,
    required this.price,
    required this.name,
    required this.dropdownvalue1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปข้อมูลการสมัครเรียน'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: ListView(
            children: [
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ชื่อสินค้า '),
                    subtitle: Text('$name'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคา '),
                    subtitle: Text('$price'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('จำนวนงวด และ ดอกเบี้ย'),
                    subtitle: Text('$dropdownvalue1'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('จำนวนเงินทั้งหมดที่ต้องจ่าย'),
                    subtitle: Text('$dropdownvalue1'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('จำนวนดอกเบี้ย'),
                    subtitle: Text('$dropdownvalue1'),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  double numberAdd(double w, double h) {
    total = w + h;
    return total;
  }
}
