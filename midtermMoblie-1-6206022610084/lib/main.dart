import 'package:flutter/material.dart';
import 'foodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.blueGrey));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<foodMenu> menu = [
    foodMenu("กุ้งเผา", "500", "assets/images/img1.jpg"),
    foodMenu("กระเพราหมู", "80", "assets/images/img2.jpg"),
    foodMenu("กระเพราไก่", "70", "assets/images/img3.png"),
    foodMenu("สเต็กหมู", "120", "assets/images/img4.jpg"),
    foodMenu("สเต็กไก่", "110", "assets/images/img5.jpg"),
    foodMenu("ไข่เจียวหมูสับ", "60", "assets/images/img6.jpg"),
    foodMenu("ปลาทอด", "360", "assets/images/img7.jpg"),
    foodMenu("หอยทอด", "75", "assets/images/img8.jpg"),
    foodMenu("ผัดไทย", "70", "assets/images/img9.jpg"),
    foodMenu("ข้าวมันไก่", "65", "assets/images/img10.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "เลือกเมนูอาหาร",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            foodMenu food = menu[index];
            return ListTile(
              leading: Image.asset(food.img),
              title: Text("${index + 1}" + "." + food.name,
                  style: TextStyle(fontSize: 28)),
              subtitle: Text(food.name + " ราคา " + food.price + " บาท"),
              onTap: () {
                print("คุณเลือกเมนู คือ " + food.name);
                AlertDialog alert = AlertDialog(
                  title: Text("คุณเลือกเมนู คือ " + food.name),
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            );
          }),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    data.add(Text("ทดสอบ List"));
    data.add(Text("ทดสอบ List"));
    for (var i = 1; i <= count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนูที่ $i",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        subtitle: Text("หัวข้อย่อยที่ $i"),
      );
      data.add(menu);
    }
    return data;
  }
}
