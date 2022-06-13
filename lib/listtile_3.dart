
import 'package:flutter/material.dart';

// Create ListTile Tabpage4 as statefulWidget class
class ListTile3 extends StatefulWidget {
  const ListTile3({Key? key}) : super(key: key);

  @override
  _ListTile3State createState() => _ListTile3State();
}

class _ListTile3State extends State<ListTile3> {
  // define two TextEditingController widgets
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();

  // string variable to hold the result
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar - centerTitle, title, backgroundColor
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Arimethic Operation"),
        backgroundColor: Colors.blueAccent,
      ),

      body: arithmeticOperation(),
    );
  }

  // arithmetic operation widget
  Widget arithmeticOperation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //1st TextField widget
        TextField(
          controller: number1,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.lightBlueAccent,
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        //2nd TextField widget
        TextField(
          controller: number2,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            fillColor: Colors.lightBlueAccent,
            filled: true,
          ),
        ),

        // Elevated button arrangement in row form

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //1st elevated button - add
            ElevatedButton.icon(
              onPressed: () {
                result =
                    (int.parse(number1.text) + int.parse(number2.text))
                        .toString();
                _result();
              },
              icon: const Icon(Icons.add), //icon data for elevated button
              label: const Text(""), //label text //label text
            ),

            const SizedBox(
              width: 10,
            ),

            //2nd elevated button - substract
            ElevatedButton.icon(
              onPressed: () {
                result =
                    (int.parse(number1.text) - int.parse(number2.text))
                        .toString();
                _result();
              },
              icon: const Icon(Icons.remove), //icon data for elevated button
              label: const Text(""), //label text/label text
            ),

            const SizedBox(
              width: 10,
            ),

            //3rd elevated button - multiply
            ElevatedButton.icon(
              onPressed: () {
                result =
                    (int.parse(number1.text) * int.parse(number2.text))
                        .toString();
                _result();
              },
              icon: const Icon(Icons.close), //icon data for elevated button
              label: const Text(""), //label text
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        // Text widgets to display the label and arithmethic operation
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //1st Text widget - "Result" label
            Text("Result: "), 
            //2nd Result value
            _result(), 
            
          ],
        ),
      ],
    );
  }

  _result() {
    setState(() {
      result = result;
    });
    return Text(result);
  }
}