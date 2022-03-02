import 'package:flutter/material.dart';
import 'welcome_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _price = TextEditingController();
  String _dropdownvalue1 = '6';

  var items1 = [
    '6',
    '10',
    '12',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shop_62060220610084'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/img1.png',
                width: 150,
                height: 150,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Laptop 25,000',
                  textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/img2.jpg',
                width: 100,
                height: 80,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('pc 70,000', textAlign: TextAlign.center)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/img3.jpg',
                width: 100,
                height: 80,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Tablet 26,000', textAlign: TextAlign.center)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/img4.jpg',
                width: 100,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ชื่อสินค้า'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _price,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ราคา'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('งวดที่ต้องการผ่อน', textAlign: TextAlign.center)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    // Initial Value
                    value: _dropdownvalue1,

                    // Array list of items
                    items: items1.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items, style: TextStyle(fontSize: 12)),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      price: _price.text,
                      name: _name.text,
                      dropdownvalue1: _dropdownvalue1,
                    ),
                  ),
                );
              },
              child: Text('สรุปยอด'),
            )
          ],
        ),
      ),
    );
  }
}
