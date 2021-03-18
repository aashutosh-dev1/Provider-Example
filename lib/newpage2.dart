import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/fetch_data_provider.dart';

class NewPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FetchDataProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Text(provider.randomJson[1].title),
    );
  }
}
