import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Create class ListTile2 as statefulWidget  - a widget class

class ListTile2 extends StatefulWidget {
  @override
  _ListTile2State createState() => _ListTile2State();
}

// _Tabpage3State - a state class
class _ListTile2State extends State<ListTile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBAr
      appBar: AppBar(title: Text("Image View")),

      //background color
      backgroundColor: Colors.white,

      body: myColumn(),
    );
  }

  // column widget

  Widget myColumn() {
    return Column(
      // Center the main axis alignment
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      // consist of two containers as childrend

      children: [
        // 1st container - with Gesture detector
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("This is Snackbar"),
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(10),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(label: 'Dismiss', textColor: Colors.white, onPressed: () {})),
            );
          },

          // Container contains the NetworkImage
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/2/2f/Logo_Jubli_Emas_50_Tahun_UPM.png"),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1.0, color: Colors.black)),
          ),
        ),

        const SizedBox(
          height: 30,
        ),

        // 2nd container - with Gesture Detector
        GestureDetector(
            onTap: () {
              Fluttertoast.showToast(
                  msg: "#WeLoveUPM",
                  fontSize: 15,
                  backgroundColor: Colors.black54,
                  gravity: ToastGravity.BOTTOM,
                  toastLength: Toast.LENGTH_LONG);
            },

            // Container contains the AssetImage
            child: Center(
              child: Container(
                height: 200,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/upmstudents.jpg'),
                        fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1.0, color: Colors.black)),
              ),
            )),
      ],
    );
  }
}