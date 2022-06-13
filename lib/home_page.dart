import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'listtile_1.dart';
import 'listtile_2.dart';
import 'listtile_3.dart';

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Screen")),
        body: customColumn(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                accountName: Text("name"),
                accountEmail: Text("email"),
                currentAccountPicture:
                    Image(image: AssetImage('assets/images/')),
              ),

              //1st listtile
               ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.red,
              ),  
              
                  title: Text("Show Alert"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListTile1()));
                  }),

              //2nd listtile
               ListTile(
              leading: Icon(
                Icons.image_sharp,
                color: Colors.blue,
              ),
                  title: Text("Image Layout"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListTile2()));
                  }),

              //3rd listtile
              ListTile(
              leading: Icon(
                Icons.calculate,
                color: Colors.green,
              ),
                  title: Text("Arithmetic"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListTile3()));
                  }),

              const Divider(
                thickness: 2,
              ),

              //4th listtile
              ListTile(
              leading: Icon(Icons.close),
              title: const Text('Close'),
                  onTap: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
        ));
  }
}

// The customColumn widget
Widget customColumn() {
  // return the main container - width & height refer to the device screen size
  return Center(
      child: Container(

          // Column form arrangement of text and container children
          child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // 4 texts - code, details, date and day
      Text("SKR4307", style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
      Text("Lab Test -Semester 2 2021/2022",
          style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
      Text(DateFormat('yyyy-MM-dd').format(DateTime.now()),
          style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),
      Text(DateFormat('EEEE').format(DateTime.now()),
          style: TextStyle(fontSize: 20, fontFamily: 'Righteous')),

      // sized box with height of 10
      SizedBox(
        width: 10,
        height: 10,
      ),

      // Sub container - containing the image
      Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://www.pngitem.com/pimgs/m/25-256506_azzurri-lp-icons-mobility-flexible-working-transparent-mobile.png'),
          ))),
    ],
  )));
}