import 'package:flutter/material.dart';

enum Lgh { Thai, English, chinese }

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _weight = 100; // แก้ไขค่าเริ่มต้นของ weight
  double _height = 100; // แก้ไขค่าเริ่มต้นของ height
  bool terms = false;
  String _select = "Computer Science";
  Lgh? _character = Lgh.Thai;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Center(
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.blue[100],
                radius: 70,
                child: Text("૮₍ ˶ᵔ ᵕ ᵔ˶ ₎ა"),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                "Register",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.account_circle),
            ),
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 10),
          Text("Weight"),
          Slider(
            value: _weight,
            min: 0,
            max: 100,
            label: _weight.round().toString(),
            divisions: 100,
            onChanged: (double value) {
              setState(() {
                _weight = value;
              });
            },
          ),
          SizedBox(height: 10),
          Text("Height"),
          Slider(
            value: _height,
            min: 0,
            max: 100,
            label: _height.round().toString(),
            divisions: 100,
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text("Major"),
          Wrap(
            spacing: 10,
            children: <Widget>[
              ChoiceChip(
                label: Text('Computer Science'),
                selected: _select == 'Computer Science',
                onSelected: (bool selected) {
                  setState(() {
                    _select = 'Computer Science';
                  });
                },
              ),
              ChoiceChip(
                label: Text('Information Technology'),
                selected: _select == 'Information Technology',
                onSelected: (bool selected) {
                  setState(() {
                    _select = 'Information Technology';
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("Language"),
          RadioListTile<Lgh>(
            title: const Text('Thai'),
            value: Lgh.Thai,
            groupValue: _character,
            onChanged: (Lgh? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<Lgh>(
            title: const Text('English'),
            value: Lgh.English,
            groupValue: _character,
            onChanged: (Lgh? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<Lgh>(
            title: const Text('Chinese'),
            value: Lgh.chinese,
            groupValue: _character,
            onChanged: (Lgh? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          ListTile(
            leading: Checkbox(
              value: terms,
              onChanged: (value) {
                setState(() {
                  terms = value!;
                });
              },
            ),
            title: Text("Agree Condition Terms"),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue[400],
            onPressed: () {},
            child: Text(
              "Register",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
