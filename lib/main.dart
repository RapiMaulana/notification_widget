import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyAppState());
}

class MyAppState extends StatelessWidget {
  GlobalKey<ScaffoldState> _scafoldkey = new GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var onPressed;
    return MaterialApp(
      home: Scaffold(
        key: _scafoldkey,
        appBar: AppBar(
          title: Text("Latihan Notification"),
        ),
        body: Center(
          child: Builder(
            builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      showtoast();
                      showSnackbar();
                    },
                    child: Text("Show Toast"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      showSnackbar();
                    },
                    child: Text("Show Snackbar"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      showAlert(context);
                    },
                    child: Text("Show Alert"),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

void showAlert(BuildContext context) {
  setState(() {
    Widget buttonOK = MaterialButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("Notification from Alert"),
      actions: [
        buttonOK,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  });
}

void showSnackbar() {}

void showtoast() {
  setState(() {
    Fluttertoast.showToast(
        msg: 'This Notification from toast',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER);
  });
}

void setState(Null Function() param0) {}
