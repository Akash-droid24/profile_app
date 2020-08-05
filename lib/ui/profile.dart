import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';

profile() {

FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    Fluttertoast.showToast(
        msg: "Profile Photo",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
        );
  }

mymail() {
    Fluttertoast.showToast(
        msg: "GMAIL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0
        );
  }

  mylink() {
    print('This is my Linkedin URL\n https://www.linkedin.com/in/akash-tikkiwal-508669191/');
  }

 mycity() {
    Fluttertoast.showToast(
        msg: "JAIPUR,Rajasthan",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.cyan,
        textColor: Colors.white,
        fontSize: 16.0);
  }

 mymsg() {
    Fluttertoast.showToast(
        msg: "ADD A MESSAGE",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

 myt() {
    Fluttertoast.showToast(
        msg: "ADD A PHOTO",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.deepOrange,
        textColor: Colors.white,
        fontSize: 16.0);
  }


  var mybody = Container(
   alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.black,
    //margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
              'https://raw.githubusercontent.com/Akash-droid24/profile_app/master/p-back.jpg'
              ),
              fit: BoxFit.cover,
              ),
            //color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(20),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 450,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Akash Tikkiwal',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.email), onPressed: mymail),
                  Text('akashtikkiwal240@gmail.com'),
                ],
              ),
            IconButton(icon: Icon(Icons.account_circle), onPressed: mylink),
            Text(
              'LETS CONNECT GUYS',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                ),
            ],
          ),
        ),
        GestureDetector(
          onTap: myprint,
          //onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/Akash-droid24/profile_app/master/akash.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.green,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Business Catalog'),
        backgroundColor: Colors.black,
           actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
          IconButton(icon: Icon(Icons.message), onPressed: mymsg),
          IconButton(icon: Icon(Icons.my_location), onPressed: mycity)
        ],
      ),
      body: mybody,
    ),
  );
}
