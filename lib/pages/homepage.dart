import 'package:flutter/material.dart';
import 'package:lab6_153/pages/hobby.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Hobby> hobbies = [];
  List _selectedItem = [];
  bool TikTok = false;

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
  }

  List<Widget> createCheckbox() {
    List<Widget> widgets = [];

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab6"),
      ),
      body: Column(
        children: [
          const Text("งานอดิเรก"),
          Column(
            children: createCheckbox(),
          ),
          Text(_selectedItem.toString())
          // Column(
          //   children: [
          //     CheckboxListTile(
          //       value: false,
          //       onChanged: (value) {},
          //       title: Text("ดู TikTok"),
          //     ),
          //     CheckboxListTile(
          //       value: false,
          //       onChanged: (value) {},
          //       title: Text("ดูหนัง"),
          //     ),
          //     CheckboxListTile(
          //       value: false,
          //       onChanged: (value) {},
          //       title: Text("เล่นแบดมินตัน"),
          //     ),
          //     CheckboxListTile(
          //       value: false,
          //       onChanged: (value) {},
          //       title: Text("อ่านหนังสือ"),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
