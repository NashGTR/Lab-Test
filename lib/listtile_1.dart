import 'package:flutter/material.dart';

// Create class ListTile1 as statelessWidget
class ListTile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar attribute
        appBar: AppBar(title: Text("Alert Dialog")),
        //background color
        backgroundColor: Colors.white,

        // Center the elevated button at the screen body
        body: Center(
          child: ElevatedButton(
            child: Text("AlertDialog!"),
            onPressed: () => _showAlertDialog(context),
          ),
        ));
  }

  // Create a method called _showAlertDialog
  _showAlertDialog(BuildContext context) {
    // three components required for the AlertDialog box

    // 1st - set up the textbutton in the alert dialog
    Widget okBTN = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // 2nd - set up the alert dialog message
    AlertDialog alertDialog = AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Image asset
          
          // Text widget
          Text("Alert Dialog Box")
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      content: const Text("SKR4307 Lab Test - Semester II 2021/22"),
      actions: [
        // addthe button declared btn widget
        okBTN,
      ],
    );

    // 3rd - show the dialog box
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

