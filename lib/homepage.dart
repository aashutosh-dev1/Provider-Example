import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/new_page.dart';
import 'package:providers/provider/fetch_data_provider.dart';

import 'service/api_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<FetchDataProvider>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: FlatButton(
          child: Column(
            children: [
              Text(
                'Simple Example of Provider to fetch Data From Internert/ Fetch from its child',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'GOTO NEW PAGE',
                    style: TextStyle(color: Colors.white),
                  )),
              Spacer(),
            ],
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewPage()));
          },
        ));
  }
}
