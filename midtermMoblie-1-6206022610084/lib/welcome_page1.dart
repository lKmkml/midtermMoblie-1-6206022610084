import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WelcomePage extends StatelessWidget {
  String name, price, dropdownvalue1;

  double wh = 0, total = 0, total1 = 0, total2 = 0, total3 = 0, total4 = 0;
  WelcomePage(
      {Key? key,
      required this.price,
      required this.dropdownvalue1,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("#,###.0#", "en_US");
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปรายละเอียด'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('ชื่อ : '),
                    subtitle: Text(' $name'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('ราคา : '),
                    subtitle: Text(' $price'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('จำนวนงวด : '),
                    subtitle: Text(' $dropdownvalue1'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('ดอกเบี้ย : '),
                    subtitle: Text(' ' +
                        nunberAdd2(double.parse(dropdownvalue1)).toString() +
                        '%'),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('ดอกเบี้ยทั้งหมด : '),
                    subtitle: Text(' ' +
                        f
                            .format(nunberAdd(double.parse(dropdownvalue1),
                                double.parse(price)))
                            .toString()),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('จำนวนผ่อนต่องวด : '),
                    subtitle: Text(' ' +
                        f
                            .format(numberAdd3(double.parse(dropdownvalue1),
                                double.parse(price)))
                            .toString()),
                  )),
              Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(1),
                  child: ListTile(
                    title: Text('จำนวนเงินทั้งหมด เมื่อผ่อนครบ : '),
                    subtitle: Text(' ' +
                        f
                            .format(nunberAdd4(double.parse(dropdownvalue1),
                                double.parse(price)))
                            .toString()),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  double nunberAdd(double w, double h) {
    if (w == 6) {
      total = h * 0;
      total2 = 0;
    } else if (w == 10) {
      total = h * (1 / 100);
      total2 = 1;
    } else if (w == 24) {
      total = h * (2 / 100);
      total2 = 2;
    } else {
      total = h * (5 / 100);
      total2 = 5;
    }
    return total1 = total * w;
  }

  double nunberAdd2(double w) {
    if (w == 6) {
      total2 = 0;
    } else if (w == 10) {
      total2 = 1;
    } else if (w == 24) {
      total2 = 2;
    } else {
      total2 = 5;
    }
    return total2;
  }

  double numberAdd3(double w, double h) {
    if (w == 6) {
      total = ((h * (0 / 100)) * w) + h;
    } else if (w == 10) {
      total = ((h * (1 / 100)) * w) + h;
    } else if (w == 24) {
      total = ((h * (2 / 100)) * w) + h;
    } else {
      total = ((h * (5 / 100)) * w) + h;
    }
    return total1 = total / w;
  }

  double nunberAdd4(double w, double h) {
    if (w == 6) {
      total = ((h * (0 / 100)) * w) + h;
    } else if (w == 10) {
      total = ((h * (1 / 100)) * w) + h;
    } else if (w == 24) {
      total = ((h * (2 / 100)) * w) + h;
    } else {
      total = ((h * (5 / 100)) * w) + h;
    }
    return total;
  }
}
